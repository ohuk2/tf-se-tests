terraform {
   required_version = ">=0.9.3"
}

provider "aws" {
   region = "us-east-1"
}


resource "aws_security_group" "allow-all" {
   name =     "allow_all"
   description = "Allow all SSH test"
   vpc_id = "${aws_vpc.main.id}"

   ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   }



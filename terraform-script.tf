provider "aws" {
  access_key = "<IAM user access key>"
  secret_key = "<IAM user secret key>"
  region     = "us-east-1"
}

resource "aws_instance" "test-ec2" {
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"
  subnet_id = "<Your subnet id>"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]


  tags = {
    Name = "<name of ec2 instance>
  }

}




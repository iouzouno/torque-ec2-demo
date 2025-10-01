# add the below resource in the ec2.tf file to launch an ec2 instance

resource "aws_instance" "terraform-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  #key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.terrafrom_sg.id]
  user_data              = file("userdata.tpl")
  tags = {
    Name = "Terraform_Instance"
  }
}

#resource "aws_key_pair" "my_key" {
#  key_name   = "my-key" # this is what EC2 will reference
#  public_key = var.PUB_KEY
#}

resource "aws_eip" "my_ip" {

  instance = aws_instance.terraform-instance.id
}


resource "aws_instance" "instance" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sg_instance.id]
  key_name = "dellopsv2"
  user_data = file("userdata.sh")

  tags = {
    "Name" = "dellopsv2_instance"
  }  
}
resource "aws_key_pair" "key_pair" {
  key_name   = "dellopsv2"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = {
    "Name" = "dellopsv2_key_pair"
  }
}
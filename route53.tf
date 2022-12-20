resource "aws_route53_record" "record" {
  zone_id = "Z10255612AQML7BG0A84P"
  name    = "chmod.online"
  type    = "A"
  ttl = 300
  records = [aws_instance.instance.public_ip]
}
resource "aws_route53_record" "writer" {
  zone_id = "aws_route53_zone.primary.zone_id"     # provide your zone id
  name    = "writer.4argo.com"
  type    = "CNAME"
  ttl     = 300
  records = [aws_db_instance.defaults.endpointl]
}
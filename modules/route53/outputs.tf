output "private_zone_id" {
  description = "ID of the created private hosted zone"
  value       = aws_route53_zone.private.zone_id
}

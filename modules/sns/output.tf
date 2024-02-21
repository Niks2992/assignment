output "topic_arn" {
  description = "ARN of the created SNS topic"
  value       = aws_sns_topic.notification_topic.arn
}
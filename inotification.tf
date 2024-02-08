resource "aws_sns_topic" "evo-stack-bank-cadastro-notificacao" {
  name = var.sns-topic-name
}

resource "aws_sns_topic_subscription" "evo-stack-bank-email-cadastro-notificacao" {
  topic_arn = aws_sns_topic.evo-stack-bank-cadastro-notificacao.arn
  protocol  = "email"
  endpoint  = var.email_cadastro  # Replace with your actual email address
}

resource "aws_sns_topic_subscription" "evo-stack-bank-sms-cadastro-notificacao" {
  topic_arn = aws_sns_topic.evo-stack-bank-cadastro-notificacao.arn
  protocol  = "sms"
  endpoint  = var.sms_cadastro # Replace with your actual phone number
}

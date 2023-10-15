resource "aws_apigatewayv2_api" "restrict_api" {
  name          = "restrict_api_gw"
  protocol_type = "HTTP"

  tags = {
    App = var.application_name,
    Environment = var.environment,
    OwnerTeam = var.owner_team
  }
}

//==================================== Logs
resource "aws_cloudwatch_log_group" "api_gw_logs" {
  name              = "/aws/api_gw/${aws_apigatewayv2_api.restrict_api.name}"
  retention_in_days = 3

  tags = {
    App  = var.application_name
  }
}
//====================================





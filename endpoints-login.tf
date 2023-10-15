//==================================== Login
resource "aws_apigatewayv2_integration" "login_integration" {
  api_id = aws_apigatewayv2_api.restrict_api.id

  integration_uri    = var.lambda_login_invoke_arn
  integration_type   = "AWS_PROXY"
  integration_method = "POST"
  
}

resource "aws_apigatewayv2_route" "login_route" {
  api_id = aws_apigatewayv2_api.restrict_api.id

  route_key          = "POST /login"
  target             = "integrations/${aws_apigatewayv2_integration.login_integration.id}"
}

resource "aws_lambda_permission" "api_gw_login" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_login_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_apigatewayv2_api.restrict_api.execution_arn}/*/*"
}
//=====================================
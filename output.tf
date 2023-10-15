# Output value definitions

############################################### Restrict API Gateway [API Gateway] Outputs

output "base_url_api_gw_stage_dev" {
  description = "Base URL for API Gateway Dev Stage."

  value = aws_apigatewayv2_stage.api_stage_dev.invoke_url
}

output "aws_apigatewayv2_api_restrict_api_id" {
  description = "API Gateway Restrict API ID."

  value = aws_apigatewayv2_api.restrict_api.id
}

output "aws_apigatewayv2_authorizer_authorizer_id" {
  description = "API Gateway Autorizer ID."

  value = aws_apigatewayv2_authorizer.authorizer.id
}

output "aws_apigatewayv2_vpc_link_eks_id" {
  description = "API Gateway VPC Link ID."

  value = aws_apigatewayv2_vpc_link.eks.id
}



###############################################
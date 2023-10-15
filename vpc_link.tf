resource "aws_apigatewayv2_vpc_link" "eks" {
  name               = "api-gateway-eks-vpc-link"
  security_group_ids = var.vpc_security_group_eks_ids
  subnet_ids         = var.eks_private_subnet_ids

  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}

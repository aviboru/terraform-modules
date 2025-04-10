module "eks_cluster" {
  source    = "git::https://github.com/aviboru/terraform-modules.git//modules/eks-cluster?ref=main"
  providers = {
    aws = aws.env
  }

  cluster_name              = var.cluster_name
  environment               = var.environment
  subnet_ids                = var.subnet_ids
  endpoint_public_access    = var.endpoint_public_access
  endpoint_private_access   = var.endpoint_private_access
  public_access_cidrs       = var.public_access_cidrs
  node_pools                = var.node_pools
  k8s_version               = var.k8s_version
  enabled_cluster_log_types = var.enabled_cluster_log_types
  kms_key_arn               = var.kms_key_arn
  tags                      = merge(var.tags, { Environment = var.environment })
}

module "eks_app" {
  source          = "git::https://github.com/aviboru/terraform-modules.git//modules/eks-app?ref=main"
  name            = var.app_name
  environment     = var.environment
  image           = var.image
  container_name  = var.container_name
  container_port  = var.container_port
  replicas        = var.replicas
}
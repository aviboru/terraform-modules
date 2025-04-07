output "service_name" {
  value = kubernetes_service.nodejs_service.metadata[0].name
}

output "deployment_name" {
  value = kubernetes_deployment.nodejs_app.metadata[0].name
}
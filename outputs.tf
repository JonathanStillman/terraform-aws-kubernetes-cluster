# Output the important information about the created Kubernetes cluster

output "k8s_cluster_name" {
  description = "The name of the created Kubernetes cluster"
  value       = module.kops.cluster_name
}

output "k8s_cluster_state_store" {
  description = "The state store for the Kubernetes cluster"
  value       = module.kops.kops_state_store
}

output "k8s_cluster_ssh_key" {
  description = "The SSH key for accessing the Kubernetes cluster"
  value       = module.kops.cluster_ssh_key
}

output "k8s_cluster_kubeconfig" {
  description = "The kubeconfig file for accessing the Kubernetes cluster"
  value       = module.kops.cluster_kubeconfig
}

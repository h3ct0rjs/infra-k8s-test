resource "digitalocean_kubernetes_cluster" "k8s_cluster_test" {
  name   = "k8s_cluster_test"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.20.7-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = var.k8s_count

    taint {
      key    = "workloadKind"
      value  = "database"
      effect = "NoSchedule"
    }
  }
}

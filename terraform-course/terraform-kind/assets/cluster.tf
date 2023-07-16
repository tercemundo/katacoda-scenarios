provider "kind" {
}

provider "kubernetes" {
  config_path = pathexpand(var.cluster_config_path)
}

resource "kind_cluster" "default" {
  name            = var.cluster_name
  kubeconfig_path = pathexpand(var.cluster_config_path)
  wait_for_ready  = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"

      kubeadm_config_patches = [
        "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
      ]
      extra_port_mappings {
        container_port = 30080
        host_port      = 30080
        listen_address  = "0.0.0.0"
      }
      extra_port_mappings {
        container_port = 30443
        host_port      = 30443
        listen_address  = "0.0.0.0"
      }
    }

    node {
      role = "worker"
    }

    node {
      role = "worker"
    }
  }
}


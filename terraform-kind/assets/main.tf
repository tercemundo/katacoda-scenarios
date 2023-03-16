terraform {
  required_providers {
    kind = {
      source = "tehcyx/kind"
      version = "0.0.16"
    }
  }
}


resource "kind_cluster" "default" {
  name = "new-cluster"
  wait_for_ready = true
  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
    }

  }
provisioner "local-exec" {
    command = "kubectl create deployment hello-node --image=registry.k8s.io/e2e-test-images/agnhost:2.39 -- /agnhost netexec --http-port=8080"

}
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.38.0"
    }
  }
}

provider "google" {
  project = "tactical-coder-460609-r7"
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }

  network_interface {
    network = "default" // This uses the default VPC network. You can specify your custom VPC here.
    access_config {
      // This empty block assigns an ephemeral public IP address.
      // For a static IP, create a google_compute_address resource and reference it.
    }
  }

  // Optional: Add tags for firewall rules or organization
  tags = var.instance_tags

  // Optional: Add a startup script to run on instance boot
  // metadata_startup_script = <<-EOF
  //   #!/bin/bash
  //   apt-get update
  // EOF
}
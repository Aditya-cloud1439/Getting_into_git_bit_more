variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "my-vm-from-tf"
}

variable "machine_type" {
  description = "Machine type for the VM instance"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "Zone for the VM instance"
  type        = string
  default     = "us-central1-a"
}

variable "boot_image" {
  description = "Boot disk image for the VM instance"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "instance_tags" {
  description = "Tags to apply to the VM instance"
  type        = list(string)
  default     = ["dev", "app-server"]
}

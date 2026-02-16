variable "aks_name" {}
variable "location" {}
variable "rg_name" {}
variable "dns_prefix" {}
variable "node_count" {
  default = 1
}
variable "vm_size" {
  # Default changed because "Standard_DS2_v2" is not allowed in this subscription/region.
  # Choose a VM size listed in the AKS error message for your subscription/region.
  # Example: "Standard_DC2s_v3" is present in the allowed list returned by the provider.
  default = "Standard_DC2s_v3"
}
variable "tags" {}

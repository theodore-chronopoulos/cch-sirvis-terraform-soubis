variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location for all resources."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group in your Azure subscription."
}

variable "acr_sku" {
  type        = string
  description = "SKU of the ACR."
  default     = "Premium"
  validation {
    condition     = contains(["Premium", "Standard", "Basic"], var.acr_sku)
    error_message = "The acr_sku must be one of the following: Basic, Standard, Prenium."
  }
}
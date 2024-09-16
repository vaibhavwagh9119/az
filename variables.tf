variable "location" {
  default     = "East US"
  description = "The Azure Region in which all resources in this example should be provisioned"
}

variable "subscription" {
  default     = "0db665bb-0445-4efd-826c-983b65aee7b3"
}

variable "availability_zones" {
  description = "The availability zones for the AKS cluster."
  type        = list(string)
  default     = ["1", "2", "3"]
}
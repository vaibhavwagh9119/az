variable "cluster_id" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "node_count" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}

variable "name" {
  type = string
}
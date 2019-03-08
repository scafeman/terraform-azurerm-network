variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = "vnet-eus-terraform"
}

variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
  default     = "rg-eus-mscafe-terraform"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.20.0.0/22"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = []
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  default     = ["10.20.1.0/24"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  default     = ["sn-eus-internal"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}

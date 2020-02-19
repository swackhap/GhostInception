  module "linuxservers" {
    source              = "Azure/compute/azurerm"
    location            = "East US"
#    location            = "Central US"
    vm_os_simple        = "UbuntuServer"
    public_ip_dns       = ["linsimplevmips"] // change to a unique name per datacenter region
    vnet_subnet_id      = "${module.network.vnet_subnets[0]}"
    vm_size             = "Standard_D32s_v1"
    vm_hostname         = "vm-test3"
    custom_data         = "${file("cloud-init.txt")}"
    resource_group_name = "calneteng1"
  }

  module "network" {
    source              = "Azure/network/azurerm"
    version             = "~> 1.1.1"
    location            = "East US"
#    location            = "Central US"
    allow_rdp_traffic   = "false"
    allow_ssh_traffic   = "true"
    resource_group_name = "calneteng1"
 #   resource_group_name = var.resource_group_name
  }

  output "linux_vm_public_name"{
    value = "${module.linuxservers.public_ip_dns_name}"
  }
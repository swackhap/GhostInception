# Networking in Public Cloud Deployments

## Define the Requirements

For this project, I am creating a simple Infrastructre-as-Code (Iac) deployment of a single Azure instance capable of nested virtualization and powerful enough to run a small Cumulus Linux simulated datacenter environment.

A user will be able to deploy a pre-configured simulation environment in minutes, and then be able to delete it when done to minimize the cost associated with using such an expensive resource.

The user will SSH directly to the Ubuntu Linux host over the Internet. 

There are no high availability requirements for this project.

For security, we should only allow SSH from the Internet into the cloud VM.

This simulation environment is targeted at Cumulus Networks users that want to [use Vagrant and Libvirt with KVM or QEMU and Cumulus VX virtual machines whose interconnections are defined by a topology.dot file.](https://docs.cumulusnetworks.com/cumulus-vx/Development-Environments/Vagrant-and-Libvirt-with-KVM-or-QEMU/)

Once the VM is deployed, the user should be able to SSH to it and immediately clone a GIT repository that defines their infrastructure, then use the open source [Topology_Converter](https://gitlab.com/cumulus-consulting/tools/topology_converter/) tool to convert the topology.dot file into a Vagrant file.

Many thanks to Rama Dharba and the Cumulus Professional Services team for their help in bringing our new datacenter network to fruition.
azure_vm { 'lough-ubu1':
  ensure                 => 'present',
#   extensions             => {
#  'PuppetExtension' => {
#    'auto_upgrade_minor_version' => true,
#    'force_update_tag' => undef,
#    'publisher' => 'Puppet',
#    'type' => 'PuppetAgent',
#    'type_handler_version' => '1.5',
#    'protected_settings'                   => {
#       'PUPPET_MASTER_SERVER' => 'tse-lough-master-7007c780.eastus2.cloudapp.azure.com'
#     },
#    },
#  },
  image                  => 'canonical:ubuntuserver:14.04.2-LTS:latest',
  location               => 'eastus2',
  managed_disks          => false,
  dns_domain_name        => 'lough-ubu1',
  os_disk_caching        => 'ReadWrite',
  os_disk_create_option  => 'FromImage',
  os_disk_name           => 'lough-ubu1',
  resource_group         => 'tse-lough-rg',
  size                   => 'Basic_A1',
  user                   => 'greg',
  password               => 'Puppetlabs1!',
  storage_account_type   => 'Standard_LRS',
  storage_account        => 'loughub1sa',
  network_security_group_name   => 'tse-lough-master-sg',
  virtual_network_name          => 'tse-lough-vnet',
  subnet_name          => 'tse-lough-sn',
  public_ip_allocation_method   => 'Dynamic',
  private_ip_allocation_method  => 'Dynamic',
}

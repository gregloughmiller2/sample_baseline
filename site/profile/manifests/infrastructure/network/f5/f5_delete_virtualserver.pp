class profile::infrastructure::network::f5::f5_delete_virtualserver {

f5_node { '/Common/WWW_Server_1':
    ensure                   => 'absent',
    address                  => '52.207.82.45',
    description              => 'WWW Server 1',
    availability_requirement => 'all',
    health_monitors          => ['/Common/icmp'],
  }
f5_node { '/Common/WWW_Server_2':
    ensure                   => 'absent',
    address                  => '52.55.154.166',
    description              => 'WWW Server 2',
    availability_requirement => 'all',
    health_monitors          => ['/Common/icmp'],
  }
f5_pool { '/Common/puppet_pool':
    ensure                    => 'absent',
    members                   => [
      { name => '/Common/WWW_Server_1', port => '80', },
      { name => '/Common/WWW_Server_2', port => '80', },
    ],
    availability_requirement  => 'all',
    health_monitors           => ['/Common/http_head_f5'],
    require                   => [
      F5_node['/Common/WWW_Server_1'],
      F5_node['/Common/WWW_Server_2'],
    ],
  }
  #f5_vlan { '/Common/Client': }
f5_virtualserver { '/Common/puppet_vs1':
    ensure                    => 'absent',
    provider                  => 'standard',
    default_pool              => '/Common/puppet_pool',
    destination_address       => '10.0.0.200',
    destination_mask          => '255.255.255.255',
    http_profile              => '/Common/http',
    service_port              => '80',
    protocol                  => 'tcp',
    source                    => '0.0.0.0/0',
    #vlan_and_tunnel_traffic   => {'enabled' => ['/Common/Client']},
    require                   => F5_pool['/Common/puppet_pool'],
  }
}

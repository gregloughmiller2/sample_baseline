## site.pp ##

# Disable filebucket by default for all File resources:
File { backup => false }

# Applications managed by App Orchestrator are defined in the site block.
site {

}

node default {
  # Check if we've set the role for this node via trusted fact, pp_role.  If yes; include that role directly here.
  if !empty( $trusted['extensions']['pp_role'] ) {
    $role = $trusted['extensions']['pp_role']
    include "role::${trusted['extensions']['pp_role']}"
  }
}

node 'bigip' {
  f5_node { '/Common/WWW_Server_1':
    ensure                   => 'present',
    address                  => '52.207.82.245',
    description              => 'WWW Server 1',
    availability_requirement => 'all',
    health_monitors          => ['/Common/icmp'],
  }
  f5_node { '/Common/WWW_Server_2':
    ensure                   => 'present',
    address                  => '52.55.154.166',
    description              => 'WWW Server 2',
    availability_requirement => 'all',
    health_monitors          => ['/Common/icmp'],
  }
  f5_pool { '/Common/puppet_pool':
    ensure                    => 'present',
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
  f5_virtualserver { '/Common/puppet_vs':
    ensure                    => 'present',
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
node 'master.inf.puppet.vm' {
  class {'f5': }
}

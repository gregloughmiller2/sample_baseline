class profile::infrastructure::network::f5::f5_delete_partition {

f5_partition { 'App1':
    name     => 'App1',
    ensure   => 'absent',
  }

f5_partition { 'App2':
    name     => 'App2',
    ensure   => 'absent',
  }
f5_partition { 'App3':
    name     => 'App3',
    ensure   => 'absent',
  }
}

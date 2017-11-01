class profile::infrastructure::network::f5::f5_add_user {

f5_user { '/Users/greg1':
    name     => '/Users/greg1',
    ensure   => 'present',
    password => 'greg1',
  }
f5_user { '/Users/greg2':
    name     => '/Users/greg2',
    ensure   => 'present',
    password => 'greg2',
  }
f5_user { '/Users/greg3':
    name     => '/Users/greg3',
    ensure   => 'present',
    password => 'greg3',
  }
f5_user { '/Users/greg4':
    name     => '/Users/greg4',
    ensure   => 'present',
    password => 'greg4',
  }
}

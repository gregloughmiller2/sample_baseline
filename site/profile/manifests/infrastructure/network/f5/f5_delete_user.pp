class profile::infrastructure::network::f5::f5_delete_user {

f5_user { '/Users/greg1':
    name     => '/Users/greg1',
    ensure   => 'absent',
    password => 'greg1',
  }
f5_user { '/Users/greg2':
    name     => '/Users/greg2',
    ensure   => 'absent',
    password => 'greg2',
  }
f5_user { '/Users/greg3':
    name     => '/Users/greg3',
    ensure   => 'absent',
    password => 'greg3',
  }
f5_user { '/Users/greg4':
    name     => '/Users/greg4',
    ensure   => 'absent',
    password => 'greg4',
  }
}

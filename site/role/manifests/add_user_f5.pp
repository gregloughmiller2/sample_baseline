class role::add_user_f5 {

f5_user { '/App1/greg1':
    name     => 'greg1',
    ensure   => 'present',
    password => 'greg1',
  }
f5_user { '/App2/greg2':
    name     => 'greg2',
    ensure   => 'present',
    password => 'greg2',
  }
f5_user { '/App1/greg3':
    name     => '/App3/greg3',
    ensure   => 'present',
    password => 'greg3',
  }
}

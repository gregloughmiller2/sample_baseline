class role::add_user_f5 {

f5_user { '/Users/greg1':
    name     => 'greg1',
    ensure   => 'present',
    password => 'greg1',
  }
f5_user { '/Users/greg2':
    name     => 'greg2',
    ensure   => 'present',
    password => 'greg2',
  }
f5_user { '/Users/greg3':
    name     => 'greg3',
    ensure   => 'present',
    password => 'greg3',
  }
f5_user { '/Users/greg4':
    ensure   => 'present',
    password => 'greg4',
  }
}

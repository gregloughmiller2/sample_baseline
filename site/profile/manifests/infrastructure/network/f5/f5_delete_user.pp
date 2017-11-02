class profile::infrastructure::network::f5::f5_delete_user {

f5_user { 'greg1':
    ensure   => 'absent',
  }
f5_user { 'greg2':
    ensure   => 'absent',
  }
f5_user { 'greg3':
    ensure   => 'absent',
  }
f5_user { 'greg4':
    ensure   => 'absent',
  }
}

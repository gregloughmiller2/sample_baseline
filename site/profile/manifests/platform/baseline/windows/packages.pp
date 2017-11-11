class profile::platform::baseline::windows::packages {

  Package {
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'notepadplusplus': 
    ensure  => '7.4.2',
  }
  package { '7zip': 
    ensure => latest'
  }
  package { 'git': 
    ensure  => '2.14.1',
  }
  package { 'uniextract': }

}

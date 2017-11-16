class profile::platform::baseline::windows::packages {

  package { 'notepadplusplus': 
    ensure  => '7.3.3',
    provider => chocolatey,
  }
  package { '7zip': 
    ensure => '16.04',
    provider => chocolatey,
  }
  package { 'git': 
    ensure  => '2.14.2',
    provider => chocolatey,
  }
}

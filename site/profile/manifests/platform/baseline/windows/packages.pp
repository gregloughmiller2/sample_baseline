class profile::platform::baseline::windows::packages {

  package { 'notepadplusplus': 
    ensure  => '7.4.2',
    provider => chocolatey,
  }
  package { '7zip': 
    ensure => '16.04',
    provider => chocolatey,
  }
  package { 'git': 
    ensure  => latest,
    provider => chocolatey,
  }
}

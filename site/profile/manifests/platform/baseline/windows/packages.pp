class profile::platform::baseline::windows::packages {

  package { 'notepadplusplus': 
    ensure  => latest,
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

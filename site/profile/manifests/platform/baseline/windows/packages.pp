class profile::platform::baseline::windows::packages {

  package { 'notepadplusplus': 
    ensure  => latest,
    provider => chocolatey,
  }
  package { '7zip': 
    ensure => latest,
    provider => chocolatey,
  }
  package { 'git': 
    ensure  => latest,
    provider => chocolatey,
  }
}

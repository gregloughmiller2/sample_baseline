class profile::platform::baseline::windows::remove_packages {

  package { 'notepadplusplus': 
    ensure  => absent,
    provider  => chocolatey,
  }
  package { '7zip': 
    ensure => absent,
    provider  => chocolatey,
  }
  package { 'git': 
    ensure => absent,
    provider  => chocolatey,
  }
  package { 'putty': 
    ensure => absent,
    provider  => chocolatey,
  }
}

class profile::platform::baseline::windows::remove_packages {

  package { 'notepadplusplus': 
    ensure  => absent,
  }
  package { '7zip': 
    ensure => absent,
  }
  package { 'git': 
    ensure => absent,
  }
  package { 'putty': 
    ensure => absent,
  }
}

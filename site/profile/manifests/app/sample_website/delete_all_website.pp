class profile::app::sample_website::delete_all_website  
 {

  # configure apache
  apache::vhost { $::fqdn:
    ensure    => absent,
  }

  file { "/var/www/html/index.html":
    ensure  => absent,
  }

}

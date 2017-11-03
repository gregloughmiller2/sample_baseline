class profile::app::sample_website::cedelete_all_website 
 {


  # configure apache
  apache::vhost { $::fqdn:
    ensure    => absent,
  }

  file { $website_source_dir:
    ensure  => absent,
  }

  file { "${doc_root}/index.html":
    ensure  => absent,
  }

}

class profile::app::sample_website::delete_all_website  (
  String $doc_root = '/var/www/html',
  Integer $webserver_port = 80,
  String $website_source_dir = 'puppet:///modules/profile/app/sample_website'
) {

  # configure apache
  apache::vhost { $::fqdn:
    ensure    => absent,
  }

  file { "${doc_root}/index.html":
    ensure  => absent,
  }

}

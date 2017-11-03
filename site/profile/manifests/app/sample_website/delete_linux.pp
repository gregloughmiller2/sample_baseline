class profile::app::sample_website::delete_linux 
{

  package { 'apache':
    package_ensure    => absent,
  }

}

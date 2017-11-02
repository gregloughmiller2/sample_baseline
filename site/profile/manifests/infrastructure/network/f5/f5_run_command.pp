class profile::infrastructure::network::f5::f5_run_command {

f5_command { '/Common/tmsh':
  tmsh => {
    command => "list",
    name     => "auth",
    target   => "user",
  }
  }
}

class profile::infrastructure::network::f5::f5_run_command {

f5_command { '/Common/tmsh':
  tmsh => {
    ensure => "absent",
    command => "this is a message to f5",
    name => "car",
    target => "ford",
  }
  }
}

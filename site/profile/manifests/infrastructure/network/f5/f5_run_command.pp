class profile::infrastructure::network::f5::f5_run_command {

f5_command { '/Common/tmsh':
  tmsh => "modify auth user greg1 password greg1 partition-access add { App1 {role manager }} shell tmsh"

}

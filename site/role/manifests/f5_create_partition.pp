# example with f5 module from f5
class role::f5_create_partition {
  include ::profile::infrastructure::network::f5::f5_add_partition
}


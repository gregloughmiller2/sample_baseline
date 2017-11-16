class example::windows_regkeys {

  # CUSTOM APP REG KEYS
  registry_key { 'HKEY_LOCAL_MACHINE\Software\Demonstration':
    ensure       => present,
    purge_values => true,
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Demonstration\value1':
    type => string,
    data => 'this is a value from puppet demo',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Demonstration\value2':
    type => dword,
    data => '0xFFFFFFFF',
  }
  
  local_security_policy { 'Maximum password age':
    ensure       => present,
    policy_value => '40',
  }

  local_security_policy { 'Enforce password history':
    ensure       => present,
    policy_value => '60',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableCcm':
    type => dword,
    data => '1',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableCdm':
    type => dword,
    data => '1',
  }

}

# Execution
exec { 'pkill':
  command => 'pkill -f killmenow',
  path    => '/usr/bin'
}

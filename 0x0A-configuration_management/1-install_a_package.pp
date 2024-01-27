# install_flask.pp

class { 'stdlib': }

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => '/usr/local/bin',
  refreshonly => true,
  require     => Class['stdlib'],
}

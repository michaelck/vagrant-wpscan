class wpscan {

  #clone wpscan
  exec { 'clone-wpscan':
    require => Class['bootstrap'],
    cwd => '/vagrant/',
    command => 'git clone https://github.com/wpscanteam/wpscan.git'
  }

  #install bundler
  exec { 'install-bundler':
    require => Exec['clone-wpscan'],
    cwd => '/vagrant/wpscan/',
    command => 'sudo gem install bundler && bundle install --without test'
  }
}

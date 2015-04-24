# vagrant-wpscan
Vagrant config for an Ubuntu box with [WPScan.org](http://wpscan.org/).

# Instructions
Open your terminal and run the following commands:

`$ git clone https://github.com/michaelck/vagrant-wpscan.git`

`$cd vagrant-wpscan`

`$ vagrant up`

It will take a few moments for the config to build the box. Once the process is complete, run the following commands:

`vagrant ssh`

`cd /vagrant/wpscan/`

You may now run WPScan. Example scan:

`$ ruby wpscan.rb --url www.example.com`

For additonal documentation on running scans visit [WPScan.org](http://wpscan.org/).

Warning: Some hosting companies don't take kindly to aggressive scanning. You may find your IP blacklisted if you appear to be malicious.

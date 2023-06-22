# Hello World !

Hi! We are Rudy and Erwan.
After reading this README, you will be able to deploy Apache, NTP and SSH with Puppet !


# Cloning and installation

Please clone the repository with following command :

    $ git clone https://github.com/SunsetMemory/Projet_Puppet

Please check you have this folders containing files :

 - apache
	 - files
	 - manifests
		 - config.pp
		 - init.pp
		 - install.pp
		 - params.pp
		 - service.pp
	 - templates
		 - 000-default.conf.erb
		 - ports.conf.erb
 - ntp
	 - manifests
		 - config.pp
		 - init.pp
		 - install.pp
		 - params.pp
		 - service.pp
	 - templates
		 - ntp.conf.erb
 - ssh
	 - manifests
		 - config.pp
		 - init.pp
		 - install.pp
		 - params.pp
		 - service.pp
	 - templates
		 - sshd_config.erb
 - node.pp
 - LICENSE
 - README

Also, you have to install puppet according to this documentation : https://www.puppet.com/docs/puppet/7/server/install_from_packages.html

Red Hat operating systems:  
`$ yum install puppetserver`

Debian and Ubuntu operating systems:  
`$ sudo apt install puppet -y`

# Puppet apply

This repository contains files needed to install and configure Apache, NTP and SSH with puppet, you can install modules one by one or in one install using "node.pp".

## Step by Step :

SSH :

    $ sudo puppet apply --modulepath=/path_to_Projet_Puppet -e "include ssh"

NTP :

    $ sudo puppet apply --modulepath=/path_to_Projet_Puppet -e "include ntp"

Apache :

    $ sudo puppet apply --modulepath=/path_to_Projet_Puppet -e "include apache"

## Using node.pp
Change node.pp to include your hostname :

    node 'YOUR_HOSTNAME' {
    include ntp
    include ssh
    include apache
    }
   Then, use the following command :
   
    $ sudo puppet apply --modulepath=/path_to_Projet_Puppet node.pp


# Test

Check systemctl :

    $ sudo systemctl status ssh
    
    $ sudo systemctl status ntp
    
    $ sudo systemctl status apache2

Check listening port

    $ ss -tulwn

***PLEASE NOTE : SSH port will be 23 if you use physical host or 24 if virtual host. 
Apache have to listen port 84.***
    

# License

MIT License
Copyright (c) 2023 OUSIDHOUM ERWAN (SunsetMemory) and GABERT RUDY (Xerfos)
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

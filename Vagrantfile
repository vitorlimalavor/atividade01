$script_mysql = <<-SCRIPT
  apt-get update && \
  apt-get install -y mysql-server-5.7 && \
  mysql < /vagrant/use.sql && \
  cat /vagrant/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf && \
  systemctl restart mysql
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  config.vm.define "mysqlserver" do |mysqlserver|
    mysqlserver.vm.network "private_network", ip: "10.120.4.14"
    mysqlserver.vm.network "forwarded_port", guest: 3306, host: 3306
    mysqlserver.vm.provider "virtualbox" do |vb|
    vb.name = "mysqlserver"
    end

    mysqlserver.vm.provision "shell", inline: $script_mysql
  end

end
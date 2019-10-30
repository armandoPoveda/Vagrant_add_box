 apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
 mkdir /vagrant/apache2
 mkdir /vagrant/apache2/www 
 cp /var/www/index.html /vagrant/apache2/www/ 
 sudo rm -r /var/www/ 
 sudo ln -s /vagrant/apache2/www/ /var/ 
 cp -r /etc/apache2/sites-available/ /vagrant/apache2/
 sudo rm -r /etc/apache2/sites-available/
 sudo ln -s /vagrant/apache2/sites-available/ /etc/apache2/
# These commands are to be executed on a freshly created VM

# install full LAMP server apps (Apache, Mysql, PHP)
sudo apt update && sudo apt install lamp-server^

# secure mysql installation
sudo mysql_secure_installation
sudo mysql -u root -p

# check if php works by adding this webpage
sudo sh -c 'echo "<?php phpinfo(); ?>" > /var/www/html/info.php'
# if the server is working, https://vm.ip.address/info.php should display the php info

# install wordpress
sudo apt install wordpress

# preprare the sql file that will create the db
#######################
# CREATE DATABASE wordpress;
# GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
# ON wordpress.*
# TO wordpress@localhost
# IDENTIFIED BY 'yourPassword';
sudo sensible-editor wordpress.sql

# execute the sql script
cat wordpress.sql | sudo mysql --defaults-extra-file=/etc/mysql/debian.cnf

# delete it, for safety reasons
sudo rm wordpress.sql

# prepare a config-localhost.php file that will log wordpress into the db
#######################
# <?php
# define('DB_NAME', 'wordpress');
# define('DB_USER', 'wordpress');
# define('DB_PASSWORD', 'yourPassword');
# define('DB_HOST', 'localhost');
# define('WP_CONTENT_DIR', '/usr/share/wordpress/wp-content');
# ?>
sudo sensible-editor /etc/wordpress/config-localhost.php

# link the /usr/share/wordpress dir into /var/www/html/wordpress
sudo ln -s /usr/share/wordpress /var/www/html/wordpress

# move the config-localhost.php file where it belongs
sudo mv /etc/wordpress/config-localhost.php /etc/wordpress/config-default.php

# in order to install new plugins, you need to add the following line
# define( 'FS_METHOD', 'direct' );
# to wp-config.php
sudo vim /var/www/html/wordpress/wp-config.php

# change the owner of the wp-content folder to the user who is running
# the web server (www-data in this case), so wordpress can access the plugin
# folder
sudo chown -R www-data:www-data /var/www/html/wordpress/wp-content/

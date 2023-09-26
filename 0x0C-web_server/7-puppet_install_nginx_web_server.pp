# Installs a Nginx server with puppet

exec {'install_nginx':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ',
}

exec {'Append_hello_world':
  provider => shell,
  command  => 'echo "Hello World!" >> /var/www/html/index.html ;'
}

exec {'Add_redirect_rule':
  provider => shell,
  command  => 'sed -i '/listen \[::\]:80 default_server;/a \\n\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=dQw4w9WgXcQ;\n\t}' /etc/nginx/sites-available/default ;'
}

exec {'Restart_nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}

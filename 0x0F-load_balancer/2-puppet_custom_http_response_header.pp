# Ensure Nginx is installed
package { 'nginx':
  ensure => 'installed',
}

# Define the custom HTTP response header value (server's hostname)
$server_hostname = $::hostname

# Create an Nginx configuration file for the custom header
file { '/etc/nginx/conf.d/custom_header.conf':
  ensure  => 'file',
  content => "server {\n  listen 80 default_server;\n  server_name _;\n  location / {\n    add_header X-Served-By \"$hostname\";\n }\n}\n",
}

# Notify Nginx to reload its configuration when the file changes
exec {'nginx_restart':
  provider => shell,
  command  => 'sudo service nginx restart'
}

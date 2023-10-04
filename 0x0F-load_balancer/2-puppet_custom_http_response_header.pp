# Install nginx if it is not already installed
package { 'nginx':
  ensure => installed,
}

# allow incoming HTTP traffic on port 80
firewall { '100 allow http access':
  port   => 80,
  proto  => tcp,
  action => accept,
}

# write the string "Hello World!" to the file
file { '/var/www/html/index.html':
  content => 'Hello World!',
}

# Use sed to replace the default server block with a new server block that includes a redirect rule for /redirect_me
file_line { 'nginx_redirect':
  path    => '/etc/nginx/sites-available/default',
  line    => 'location /redirect_me { return 301 https://www.youtube.com/watch?v=dQw4w9WgXcQ; }',
  match   => 'listen \[::\]:80 default_server;',
  ensure  => present,
  require => Package['nginx'],
}

# Create the custom 404 error page
file { '/var/www/html/404.html':
  content => "Ceci n'est pas une page",
}

# Configure Nginx to use the custom 404 error page
file_line { 'nginx_404':
  path    => '/etc/nginx/sites-available/default',
  line    => "error_page 404 /404.html;\n\tlocation = /404.html {\n\t\tinternal;\n\t}",
  match   => 'listen \[::\]:80 default_server;',
  ensure  => present,
  require => Package['nginx'],
}

# Add custom HTTP response header
file_line { 'nginx_header':
  path    => '/etc/nginx/sites-available/default',
  line    => 'add_header X-Served-By $HOSTNAME;',
  match   => 'server {',
  ensure  => present,
  require => Package['nginx'],
}

# Restart Nginx
service { 'nginx':
  ensure => running,
  enable => true,
  require => [
    File_line['nginx_redirect'],
    File_line['nginx_404'],
    File_line['nginx_header'],
  ],
}

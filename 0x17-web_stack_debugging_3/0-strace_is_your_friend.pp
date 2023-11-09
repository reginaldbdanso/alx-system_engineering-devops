# Puppet script to update a line in a server file

# Use sed to substitute "phpp" with "php" in the specified file
exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => ['/bin', '/usr/bin']
}

class wordpress_manager::plugins::install (
  $resource_name = [],
  $path,
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install
    $wp_cli = "/usr/bin/wp-cli --allow-root"
    $resource_name.each |String $resource| {
    exec { "Install $resource":
            command => "$wp_cli plugin install $resource --path=$path",
       }
    }
}


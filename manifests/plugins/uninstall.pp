ass wordpress_manager::plugins::uninstall (
  $resource_name = [],
  $path,
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install
    $wp_cli = "/usr/bin/wp-cli --allow-root"
    $resource_name.each |String $resource| {
    exec { "Uninstall $resource":
            command => "$wp_cli plugin uninstall $resource --path=$path ",
       }
    }
}

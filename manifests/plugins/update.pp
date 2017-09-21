class wordpress_manager::plugins::update (
  $resource_name = [],
  $path,
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install
    $wp_cli = "/usr/bin/wp-cli --allow-root"
    $resource_name.each |String $resource| {
    exec { "Update $resource":
            command => "$wp_cli plugin update $resource --path=$path ",
       }
    }
}

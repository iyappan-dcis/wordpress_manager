class wordpress_manager::plugins::activate (
  $resource_name = [],
  $path,
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install
    $wp_cli = "/usr/bin/wp-cli --allow-root"
    $resource_name.each |String $resource| {
    exec { "Activate $resource":
            command => "$wp_cli plugin activate $resource --path=$path",
            onlyif => "$wp_cli plugin is-installed $resource --path=$path",
       }
    }
}

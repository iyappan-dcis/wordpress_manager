class wordpress_manager::themes::activate (
  $resource_name,
  $path,
) {

     # Make sure WP_CLI is installed
    require wordpress_manager::install
    $wp_cli = "/usr/bin/wp-cli --allow-root"

    exec { "$action $resource_name":
            command => "$wp_cli theme activate $resource_name --path=$path",
            onlyif => "$wp_cli theme is-installed $resource_name"
        }
}

class wordpress_manager::wp::download (
  $path = {},
  $version = {},
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install

    $wp_cli = "/usr/bin/wp-cli --allow-root"

    # Download Wordpress
    exec { "Download Wordpress":
             command => "$wp_cli core download --path=$path --version=$version",
         }
}

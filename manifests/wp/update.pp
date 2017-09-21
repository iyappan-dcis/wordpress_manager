class wordpress_manager::wp::update (
  $path,
  $version,
) {
    # Make sure WP_CLI is installed
    require wordpress_manager::install

    $wp_cli = "/usr/bin/wp-cli --allow-root"

    # Update WordPress
    exec { "update wordpress":
	    command => "$wp_cli core update --version=$version --path=$path",
	}
}

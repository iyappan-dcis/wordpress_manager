# wordpress_manager
Managing Wordpress Through Puppet

<b> Manifest:

class { 'wordpress_manager':
}

<b>Hiera:
  
<b> To download and install wordpress:

wordpress_manager::wp::download::path: 'path to install' <br>
wordpress_manager::wp::download::version: 'xxx'

<b> To update wordpress to specific version:

wordpress_manager::wp::update::path: 'Document root of wordpress' <br>
wordpress_manager::wp::update::version: 'xxx'

<b> To install plugins:

wordpress_manager::plugins::install::resource_name: ['Plugin1','Plugin2'] <br>
wordpress_manager::plugins::install::path: 'Document root of wordpress'

<b> To activate plugins:

wordpress_manager::plugins::activate::resource_name: ['Plugin1','Plugin2'] <br>
wordpress_manager::plugins::activate::path: 'Document root of wordpress'

<b> To activate theme:

wordpress_manager::themes::activate::resource_name: 'theme_name' <br>
wordpress_manager::themes::activate::path: 'Document root of wordpress'

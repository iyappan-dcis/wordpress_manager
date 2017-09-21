class wordpress_manager {

# Load all variables
    class { 'wordpress_manager::wp::download':
    }
    class { 'wordpress_manager::wp::update':
    }
    class { 'wordpress_manager::plugins::install':
    }
#    class { 'wordpress_manager::plugins::update':
#    }
    class { 'wordpress_manager::plugins::activate':
    }
#    class { 'wordpress_manager::plugins::deactivate':
#    }
    class { 'wordpress_manager::themes::activate':
    }
}

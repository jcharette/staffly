class{ 'apache':
	mpm_module => 'prefork',
}
include apache::mod::rewrite
include apache::mod::php

apache::vhost { 'staffly.com':
	docroot 	=> '/var/www/staffly',
	directories => 
	[
		{
			path 		=> '/var/www/staffly',
			allow_override 	=> [ 'AuthConfig' ],
		},
	],
}

# Install Grunt
class grunt (
	$config,
	$path = '/vagrant/extensions/grunt',
) {
	if ( ! empty($config[disabled_extensions]) and 'chassis/grunt' in $config[disabled_extensions] ) {
		exec { 'uninstall grunt':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm uninstall -g grunt-cli'
		}
	} else {
		exec { 'install grunt':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm install -g grunt-cli',
			require => [ Class['nodejs'] ],
			unless  => 'which grunt',
		}
	}
}

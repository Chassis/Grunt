class grunt (
	$path = "/vagrant/extensions/grunt",
) {
	exec { 'install grunt':
		path        => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
		command     => 'npm install -g grunt-cli',
		require     => [ Class['nodejs'] ],
		unless  => 'which grunt',
	}
}

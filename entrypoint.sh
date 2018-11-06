#!/bin/sh'

if [ -d /nagios_config ]; then
	echo "installing nagios configuration"
	cp -a /nagios_config/* /etc/nagios
	chown -R root:nagios /etc/nagios
	chmod -R g+rwX /etc/nagios
fi

exec "$@"

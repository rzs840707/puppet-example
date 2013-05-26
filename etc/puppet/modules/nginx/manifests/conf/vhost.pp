define nginx::conf::vhost($www_root) {
	$domain_name = $name

	file {
		"/etc/nginx/conf.d/vhost_${domain_name}.conf":
			content => "
server {
	listen *;
	server_name $domain_name;
	root $www_root;
	access_log /var/log/nginx/${domain_name}.access.log;

	location / {
		index index.html index.htm index.php;
	}
}",
	}
}

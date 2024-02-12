param($network, $server)
for ($i = 0;  $i -lt 254; $i++){
	$the_host="$network.$i"
	#echo $the_host
	Resolve-DnsName -DnsOnly $the_host -Server $server -ErrorAction Ignore
}

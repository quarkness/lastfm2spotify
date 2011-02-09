<?php
$spotify_lookup_uri = "http://ws.spotify.com/search/1/track.json?q=";

function get_json_api($url)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$response = curl_exec($ch);
		$info = curl_getinfo($ch);
		if(strlen(curl_error($ch) > 0))
			return Array('status'=>'error', 'error'=>curl_error($ch));

		// als response te json_decoden is, gedecodeerd teruggeven, anders status error
		if($d = json_decode($response, true))
			return $d;
		else
			return Array('status'=>'error', 'error'=>'http status ' . $info['http_code']);
}
$username = (isset($argv[1])) ? $argv[1] : 'quarkness';
$txt_filename = "weeklytrackchart.{$username}.txt";
$spotify_filename = "weeklytrackchart.{$username}.spotify";
$h_txt = fopen($txt_filename, 'r');
$h_spotify = fopen($spotify_filename, 'w');

//$line = 'smurfen dierentuin';
while (($line = fgets($h_txt)) !== false)
{
	$terms = urlencode(trim($line));
	if(strlen($terms) > 0)
	{
		$url = $spotify_lookup_uri . $terms;
		$spotify_response = get_json_api($url);
		if(isset($spotify_response['tracks'][0]))
		{
			fputs($h_spotify, "{$spotify_response['tracks'][0]['href']}\n");	
		}
	}
	
}
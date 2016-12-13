<?php
	$config = array(
		'development' => array(
			'db' => array(
				'username' => 'root',
				'password' => 'root',
				'host' => 'localhost',
				'database' => 'database321_project',
				'error' => 'true',
			),
		),
		
		'production' => array(
			'db'=>array(
				'username' => 'live',
				'password' => 'environment',
				'host' => 'settings',
			),
		),
	);

?>
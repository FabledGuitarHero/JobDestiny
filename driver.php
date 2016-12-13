<?php
	include_once("PuzzleMaker.php");
	
	ini_set('display_errors',1);
			ini_set('display_startup_errors',1);
			error_reporting(-1);
	
	$name = 'nate';
	$template = new PuzzleMaker();
	
	$test = array();
	$test2 = array(1, 2, 3);
	$test3 = array(4,5,6);
	
	$template->setResults(0, $test2);
	var_dump($template->fetchResults(0));

	$template->setResults(1, $test3);
	var_dump($template->fetchResults(1));
	
	$test[] = $test2;
	//var_dump($test);
	
	$template->render("student_head.php");
?>
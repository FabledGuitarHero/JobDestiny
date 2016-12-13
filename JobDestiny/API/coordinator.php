<?php

	require_once '../config/destinyConfig.php';
	require_once '../TemplateMaker.php';

	
	error_reporting(E_ERROR | E_PARSE);

	ob_start();

	if(isset($_SESSION)) {
	session_destroy();
	}

	session_start();
	$username = $_SESSION['username'];
	
	$config = $config['development'];
        
        if ($config['db']['error'] == 'true')
        {
        	ini_set('display_errors',1);
			ini_set('display_startup_errors',1);
			error_reporting(-1);
		}
		
	$template = new TemplateMaker();

	$con = mysqli_connect($config['db']['host'], $config['db']['username'],$config['db']['password']);
        if (!$con)
          echo "Failed";
        mysqli_select_db($con,$config['db']['database']) or die ("Couldn't establish database".mysql_error());

	//echo $username;

	//Grab coordinator information
	$coordinatorInfo = "SELECT * FROM Intern_Coordinator WHERE userName = '".$username."';";
	$coordinateSearch = mysqli_query($con, $coordinatorInfo);
	$coordinatorData = mysqli_fetch_assoc($coordinateSearch);
	$template -> setResults(0, $coordinatorData);
	//var_dump($template->fetchResults(0));


	//Grab student ID using studentTable column from Intern Coordinator
	$studentInfo = "SELECT stuID FROM StudentsTable WHERE studentsTableID = ".$coordinatorData["studentsTableID"].";";
	$studentSearch = mysqli_query($con, $studentInfo);
	$studentData = mysqli_fetch_assoc($studentSearch);
	$template -> setResults(1, $studentData);
	
	
	//Pull students information 						  
	$studentPull = "SELECT * FROM Student WHERE stuID = '".$studentData["stuID"]."';";
	$studentPullSearch = mysqli_query($con, $studentPull);
	$studentPullData = mysqli_fetch_assoc($studentPullSearch);
	$template -> setResults(2, $studentPullData);
	
	$template->render("head.phtml");
	$template->render("coordinator_body.phtml");
	$template->render("footer.phtml");
	

?>
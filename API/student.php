<?php 
	require_once '../config/destinyConfig.php';
	require_once '../TemplateMaker.php';

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
        
    $studentInfo = "SELECT * FROM Student WHERE username = '".$username."';";
    $result = mysqli_query($con, $studentInfo);
	$studentData = mysqli_fetch_assoc($result);
	$template -> setResults(0, $studentData);
	
	$jobInfo = "SELECT * FROM Job WHERE relatedMajor = '".$studentData["major"]."' and minGpa >='".$studentData["gpa"]."';";
	$jobResult = mysqli_query($con, $jobInfo);
	$jobData = mysqli_fetch_assoc($jobResult);
	$template -> setResults(1, $jobData);
	
	$skillSearch = "SELECT * FROM Skills WHERE stuID = '".$studentData["stuID"]."';";
	$skillResult = mysqli_query($con, $skillSearch);
	$skillData = mysqli_fetch_assoc($skillResult);
	$template -> setResults(2, $skillData);
	
	$template->render("head.phtml");
	$template->render("student_body.phtml");
	$template->render("footer.phtml");
	
	

?>
  
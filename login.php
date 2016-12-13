<?php

/*----Load config file----*/
		require_once 'config/destinyConfig.php';
       
    
   
/*----Setup cofing to correct environment with error settings----*/
        $config = $config['development'];
        
        if ($config['db']['error'] == 'true')
        {
        	ini_set('display_errors',1);
			ini_set('display_startup_errors',1);
			error_reporting(-1);
		}

/*----Connect to DB----*/
        $con = mysqli_connect($config['db']['host'], $config['db']['username'],$config['db']['password']);
        if (!$con)
          echo "Failed";
        mysqli_select_db($con,$config['db']['database']) or die ("Couldn't establish database".mysql_error());

/*----Create a session----*/
        ob_start();

        if(isset($_SESSION)) {
          session_destroy();
        }

        session_start();
        $_SESSION['username'] = $_REQUEST['userName'];
        //$_SESSION['password'] = $_REQUEST['passwrd'];
        
        $username = mysqli_real_escape_string($con, $_SESSION['username']);
        $password = mysqli_real_escape_string($con, $_REQUEST['passwrd']);
        echo $username."<br>";
        echo $password."<br>";
    
    
/*----Collect user information----*/  	
       	$grabMe = "SELECT passwrd FROM Users WHERE username = '".$username."';";
		$result = mysqli_query($con, $grabMe);
		$row = mysqli_fetch_assoc($result);

	
/*----Check if password entered is equal the password in the database and
	  redirect user to the appropriate landing page----*/
          if($password == $row['passwrd']) 
          {
          	echo '<br>password success: '.$password;
          	$fetchTable="Select userName From Student WHERE userName = '".$_SESSION['username']."'";
          	$getThatTable= mysqli_query($con, $fetchTable);
        	
        	$result = mysqli_fetch_array($getThatTable);

           	if ($username == $result['userName'])
            {
            	$url = "API/student.php";
            	
            }
            else
            {
            	$url = "API/coordinator.php";
            }
          }
          else {
           		$url = "login.html";
          } 
/*----Incorrect data entered----*/
    header('Location: '.$url);
?>
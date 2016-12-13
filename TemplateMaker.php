<?php

	ini_set('display_errors',1);
			ini_set('display_startup_errors',1);
			error_reporting(-1);

	class TemplateMaker{
		
		protected $template_directory = "../templates/";
		protected $searchResults = array();
		
		public function __construct($template_directory = null)
		{
			{
				if ($this->template_directory !== null)
				$this->template_directory = $this->template_directory;
			}
		}
		
		public function render($template_file)
		{
			if (file_exists($this->template_directory.$template_file))
			{
				include $this->template_directory.$template_file;
			}
			else
			{
				throw new Exception ("Directory Error");
			}
		}
		
		public function setResults($location, $array)
		{
			$this->searchResults[$location] = $array;
		}
		
		public function fetchResults($location)
		{
			return $this->searchResults[$location];
		}
		
		public function fetchSpecific($location, $item)
		{
			$temp = $this->searchResults[$location];
			//echo "inside temp array: ".var_dump($temp);
			//echo "<br>";
			//echo "inside item: ".var_dump($temp[$item]);
			return $temp[$item];
		}
	
	} 

?>
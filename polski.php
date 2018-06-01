<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<title>Szkola Ponadgimnazjalna</title>
	<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
<div class="container">
	 <div class="baner">
		<h1>Oceny uczniów: język polski</h1>
	 </div>
	 <div class="leftbar">
		<h2>Lista uczniów:</h2>
	
		<ol>
			<?php
			$con=@mysqli_connect('userdb1','1158397_GcC','7fa1TeCmKzmFP0','1158397_GcC');
			if(!$con)
			{
				die("failed connection: ".mysqli_connect_error());
			}
			//echo "ok";

			mysqli_query($con,"SET CHARSET utf8");
			//mysqli_query($con,"SET NAMES utf8 COLLATE utf8_polish_ci");

			$query=mysqli_query($con,'SELECT `imie`, `nazwisko` FROM `uczen`');
			while($row=mysqli_fetch_assoc($query))
			{
				
				echo 	'<li>'.$row['imie'].' '.$row['nazwisko'].'</li>';
			}

			mysqli_close($con);

			?>
		</ol>
		
	 </div>
	 
	 <div class="rightbar">
		<h2>Uczeń: 
			<?php
				$con=mysqli_connect('userdb1','1158397_GcC','7fa1TeCmKzmFP0','1158397_GcC');
				if(!$con)
				{
					die("Failed connection: ".mysqli_connect_error());
				}
				
				
				mysqli_query($con,"	set charset utf8");
				$query=mysqli_query($con, 'SELECT imie, nazwisko FROM `uczen` WHERE id=2');
				
				while($row=mysqli_fetch_array($query))
				{
					echo $row['imie'].' '.$row['nazwisko'];
				}
				
				mysqli_close($con);
			?>		
		</h2>
		
		<p>Średnie ocen z języka polskiego: 
			<?php
				$con=mysqli_connect('userdb1','1158397_GcC','7fa1TeCmKzmFP0','1158397_GcC');
				if(!$con)
				{
					die("Failed connection: ".mysqli_connect_error());
				}
				
				
				mysqli_query($con,"set charset utf8");
				$query=mysqli_query($con, 'SELECT SUM(`ocena`)/count(`ocena`) AS `srednia ocen z języka polskiego` FROM `ocena` WHERE `uczen_id`=2 AND `przedmiot_id`=1');
				
				while($row=mysqli_fetch_array($query))
				{
					echo $row['srednia ocen z języka polskiego'];
				}
				
				mysqli_close($con);
			?>
		</p>
	 </div>
	 
	 <div class="footer">
		<h3>Zespoł Szkoł Ponadgimnazjalna</h3>
		<p>Stonę opracował: 00000000000</p>
	 </div>

</div>

</body>
</html>
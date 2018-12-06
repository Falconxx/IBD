<?php
session_start();
unset($_SESSION['blad']);
require_once "connect.php";
mysqli_report(MYSQLI_REPORT_STRICT);
$houses_id=$_SESSION['houses_id'];
$polaczenie = new mysqli($host,$db_user,$db_password,$db_name);
$mysqli = new mysqli($host,$db_user,$db_password,$db_name);
$polaczenie->query('set character_set_server=utf8');
$polaczenie->query('set character_set_client=utf8');
$polaczenie->query('set character_set_connection=utf8');
$polaczenie->query('set character_set_results=utf8');
$polaczenie->query('set character_set_server=utf8');
$mysqli->query('set character_set_server=utf8');
$mysqli->query('set character_set_client=utf8');
$mysqli->query('set character_set_connection=utf8');
$mysqli->query('set character_set_results=utf8');
$mysqli->query('set character_set_server=utf8');
$number1 = count($_POST["room"]);
$number2 = count($_POST["equipment"]);
$number3 = count($_POST["description"]);
$number4 = count($_POST["price"]);
$number5 = count($_POST["effort_hours"]);

$value1 = $_POST["room"];
$value2 = $_POST["equipment"];
$value3 = $_POST["status"];
$value4 = $_POST["user"];
$value5 = $_POST["priority"];
$value6 = $_POST["description"];
$value7 = $_POST["price"];
$value8 = $_POST["effort_hours"];

$val;
$sql = '';
if(( $number1 >= 1 && $number2 >= 1 && $number3>=1&& $number4>=1&& $number5>=1 )&&($number1==$number2 && $number2==$number3&& $number3==$number4&& $number4==$number5))
{
	for($i=0; $i<$number1; $i++)
	{
		$value1_clean = $value1[$i];
		$value2_clean = $value2[$i];
		$value3_clean = $value3[$i];
		$value4_clean = $value4[$i];
		$value5_clean = $value5[$i];
		$value6_clean = $value6[$i];
		$value7_clean = $value7[$i];
		$value8_clean = $value8[$i];

		if($value1_clean != '' && $value2_clean != '' && $value3_clean != '' && $value4_clean != '' && $value5_clean != '' && $value6_clean != ''&& $value7_clean != ''&& $value8_clean != '')

		{
			$sql = 'INSERT INTO list_of_order(house_id,room,equipment,status,user_id,priority,description,price,effort_hours) VALUES("'.$houses_id.'", "'.$value1_clean.'", "'.$value2_clean.'", "'.$value3_clean.'", "'.$value4_clean.'", "'.$value5_clean.'", "'.$value6_clean.'", "'.$value7_clean.'", "'.$value8_clean.'");';
			
			

			// "INSERT INTO list_of_order(name) VALUES('".mysqli_real_escape_string($connect, $_POST["name"][$i])."')";
			$polaczenie->query($sql);
			// mysqli_query($polaczenie, $sql);
			echo "order ".$i." was insterter properly";
			echo $sql;
		}
		else{
			// echo "ERROR order ".$i." was not insterter properly";
			
			echo $sql;
			echo $value4_clean[$i];


		}

	}
}
else
{
    echo "Please, insert all data";

}
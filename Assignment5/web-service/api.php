	<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "Assignment5";
		//echo date(yy-mm-dd);
		//This creates connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		//This checks connection
		if ($conn->connect_error)
		{
		    die("Connection failed: " . $conn->connect_error);
		}

//https://www.w3schools.com/php/php_superglobals.asp
		$function = $_SERVER['REQUEST_METHOD'];
		switch($function)
		{
			case 'GET':
				$select = '';
				if((isset($_GET['check1'])) && $select=='')
				{
					$select .=$_GET['check1'];
				}
				else if((isset($_GET['check2']))&&$select=='')
				{
					$select .=$_GET['check2'];
				}
				else if(isset($_GET['check3'])&&$select=='')
				{
					$select .=$_GET['check3'];
				}
				else if(isset($_GET['check4'])&&$select=='')
				{
					$select .=$_GET['check4'];
				}
				else if(isset($_GET['check5'])&&$select=='')
				{
					$select .=$_GET['check5'];
				}

				if(isset($_GET['check1'])&&$select!=''&& strpos($select, $_GET['check1'])==false)
				{
					$select .=",".$_GET['check1'];
				}
				if(isset($_GET['check2'])&&$select!=''&& strpos($select, $_GET['check2'])==false )
				{
					$select .=",".$_GET['check2'];
				}
				if(isset($_GET['check3'])&&$select!=''&& strpos($select, $_GET['check3'])==false)
				{
					$select .=",".$_GET['check3'];
				}
				if(isset($_GET['check4'])&&$select!=''&& strpos($select, $_GET['check4'])==false)
				{
					$select .=",".$_GET['check4'];
				}
				if(isset($_GET['check5'])&&$select!=''&& strpos($select, $_GET['check5'])==false)
				{
					$select .=",".$_GET['check5'];
				}
				if($select=='')
				{
					$select ='*';
				}
				//echo $select;
				//echo strpos($select, $_GET['check1']);
				$whereP = $_GET['whereParam'];
				$P = $_GET['RParam'];


				$sql = "SELECT $select FROM Ass5 WHERE $whereP = '$P'";
				$result = mysqli_query($conn, $sql);
				echo json_encode(mysqli_fetch_object($result));
				break;

			case 'POST':
				$name = $_POST['Cname'];
				$url = $_POST['Curl'];
				$date = date('d-m-Y');
				$Desc = $_POST['Cdesc'];
				$sql = "INSERT INTO Ass5 (name,URL, theDate, theDesc) VALUES ('$name', '$url', '$date', '$Desc')";
				$result = mysqli_query($conn, $sql);
				echo "New entry with id=".mysqli_insert_id($conn);
				break;

			case 'PUT':
			//print_r($_POST);
				$input = file_get_contents("php://input");
				parse_str($input, $output);
				$setP = $output['setParam'];
				$newP = $output['newParam'];
				$whereP = $output['whereParam'];
				$oldP = $output['oldParam'];

				$sql = "UPDATE Ass5 SET $setP = '$newP' WHERE $whereP = $oldP";
				echo $sql."<br>";
				$result = mysqli_query($conn, $sql);
				echo mysqli_affected_rows ($conn)." Rows affected";

				break;

			case 'DELETE':
				$input = file_get_contents("php://input");
				parse_str($input, $output);
				$id = $output['Did'];
				$sql = "DELETE FROM Ass5 WHERE id = $id";

				$result = mysqli_query($conn, $sql);
				echo mysqli_affected_rows ($conn)." Rows deleted";

				break;
		}


		mysqli_close($conn);
	?>
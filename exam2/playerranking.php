<!doctype HTML>
<html>
<body>
<form method="post" action="main.php">
<input type="submit" value="Home">
</form>
</body>
</html>

<?php 
$servername='localhost';
$username='root';
$password='nsl';
$dbname='exam2';

$conn= mysqli_connect($servename,$username,$password,$dbname);

if($conn)
{
	$sql="select * from playergoals";
	$result=mysqli_query($conn,$sql);
	if(!$result)
	{
		echo "no players in league";
		}
		else
		{
			echo "<table border=2px>";
			echo "<th>"."Player Id"."</th>"."<th>"."Goals"."</th>"."<th>"."Match Id"."</th>";
			while($row=mysqli_fetch_assoc($result))
			{
				echo "<tr>"."<td>".$row["playerid"]."</td>"."<td>".$row["noofgoals"]."</td>"."<td>".$row["matchid"]."</td>";
				
			}
			echo "</table>";
		
		
			
			
			
		}
}
	
else
{
	echo "not conected<br>";
}
mysqli_close($conn);
?>



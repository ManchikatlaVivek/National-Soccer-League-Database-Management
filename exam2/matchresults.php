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
$teamname=$_POST[teamname];
echo $teamname."<br>";

$conn= mysqli_connect($servename,$username,$password,$dbname);

if($conn)
{
	$sql="select * from matchresults";
	$result=mysqli_query($conn,$sql);
	if(!$result)
	{
		echo "no matches played in league";
		}
		else
		{
			echo "<table border=2px>";
			echo "<th>"."Team id"."</th>"."<th>"."Won type"."</th>"."<th>"."points"."</th>"."<th>"."Match id"."</th>";
			while($row=mysqli_fetch_assoc($result))
			{
				echo "<tr>"."<td>".$row["wonteamid"]."</td>"."<td>".$row["wontype"]."</td>"."<td>".$row["points"]."</td>"."<td>".$row["matchid"]."</td>"."</tr>";
				
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



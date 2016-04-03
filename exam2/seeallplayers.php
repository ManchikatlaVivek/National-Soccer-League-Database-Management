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
	$sql="select player.name as name,bod,startyear,shirtnumber,team.name as teamname from team,player where team.teamid=player.teamid ";
	$result=mysqli_query($conn,$sql);
	if(!$result)
	{
		echo "no players in league";
		}
		else
		{
			echo "<table border=2px>";
			echo "<th>"."Player name"."</th>"."<th>"."Date Of Birth"."</th>"."<th>"."Start Year"."</th>"."<th>"."Shirt Number"."</th>"."<th>"."Team Name"."</th>";
			while($row=mysqli_fetch_assoc($result))
			{
				echo "<tr>"."<td>".$row["name"]."</td>"."<td>".$row["bod"]."</td>"."<td>".$row["startyear"]."</td>"."<td>".$row["shirtnumber"]."</td>"."<td>".$row["teamname"]."</td>"."</tr>";
				
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



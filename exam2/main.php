<!doctype HTML>
<html>
<body>
<form method="post" action="checklogin.php">
<fieldset>
<input type="text" name="adminname" required placeholder="admin name"><br>
<input type="password" name="password" required placeholder="password"><br>
<input type="submit" value="login">
</fieldset>
</form>

<form action="seeallplayers.php" method="post">
<fieldset>
					<input type="submit" value="SeeAllPlayers">
					</fieldset>
					</form>
					<form action="matchresults.php" method="post">
<fieldset>
					<input type="submit" value="Matchresults">
					</fieldset>
					</form>
					
					<form action="pointstable.php" method="post">
					<fieldset>
					
					<input type="submit" value="PointsTable">
					</fieldset>
					</form>
					
					<form action="playerranking.php" method="post">
					<fieldset>
					<input type="submit" value="PlayerRanking">
					</fieldset>
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
	$sql="select team.name as name ,player.name as captain ,team.mainstadium as mainstadium, team.city as city from team,player where team.captainid=player.playerid ";
	$result=mysqli_query($conn,$sql);
	if(!$result)
	{
		echo "no teams in league";
		}
		else
		{
			echo "<table border=2px>";
			echo "<th>"."Team name"."</th>"."<th>"."Captain"."</th>"."<th>"."Home stadium"."</th>"."<th>"."Home City"."</th>";
			while($row=mysqli_fetch_assoc($result))
			{
				echo "<tr>"."<td>".$row["name"]."</td>"."<td>".$row["captain"]."</td>"."<td>".$row["mainstadium"]."</td>"."<td>".$row["city"]."</td>"."</tr>";
				
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



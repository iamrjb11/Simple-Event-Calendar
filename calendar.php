<?php
$day=date("j");
$month=date("n");
$year=date("Y");

if (isset($_GET['day'])) {
	$day=$_GET['day'];
}
else{
	$day=date("j");
}
if(isset($_GET['month'])){
	$month=$_GET['month'];
}
else{
	$month=date("n");
}

if(isset($_GET['year'])){
	$year=$_GET['year'];
}
else{
	$year=date("Y");
}



$currentTimeStamp=strtotime("$year-$month-$day");
$monthName=date("F",$currentTimeStamp);
$numDays=date("t",$currentTimeStamp);
$counter=0;



?>



<head>
	<script type="text/javascript">
		function goLastMonth(month,year) {
			if(month==1){
				--year;
				month=12;
			}
			document.location.href = "<?php $_SERVER['PHP_SELF'];?>?month="+(month-1)+"&year="+year;
			
		}

		function goNextMonth(month,year) {
			if(month==12 ){
				++year;
				month=0;
			}
			document.location.href = "<?php $_SERVER['PHP_SELF'];?>?month="+(month+1)+"&year="+year
		}
	</script>
</head>
<body>
	<div>WELCOME TO EVENT CALENDER</div><br>
	<table border="1">
		<tr>
			<td><input type="button" name="previousbutton" value="<" onclick="goLastMonth(<?php echo $month.",".$year; ?>)"></td>
			<td colspan="5" style="text-align: center;"><?php echo $day."-".$month."-".$year;  ?></td>
			<td><input type="button" name="nextbutton" value=">" onclick="goNextMonth(<?php echo $month.",".$year; ?>)"></td>
		</tr>
		<tr>
			<th style="text-align: center;width: 50px;">Sun</th>
			<th style="text-align: center;width: 50px;">Mon</th>
			<th style="text-align: center;width: 50px;">Tue</th>
			<th style="text-align: center;width: 50px;">Wed</th>
			<th style="text-align: center;width: 50px;">Thu</th>
			<th style="text-align: center;width: 50px;">Fri</th>
			<th style="text-align: center;width: 50px;">Sat</th>
		</tr>
		<?php
		echo "<tr>";
		for($i=1;$i<$numDays+1;$i++,$counter++){
			$timeStamp=strtotime("$year-$month-$i");
			if($i==1){
				$firstDay=date("w",$timeStamp);
				for($j=0;$j<$firstDay;$j++,$counter++){
					echo "<td>&nbsp;</td>";
				}

			}
			if($counter %7 == 0){
				//echo "counter=".$counter;
				echo "</tr><tr>";
			}
			echo "<td align='center'>".$i."</td>";
		}
		echo "</tr>";



		?>
	</table>


</body>
<?php 
	session_start();
	if(!isset($_SESSION["IDAdmin"])){
        header("location: ../testdangnhapadmin/loginadmin.php");
    }
	include("../movie-ticket/connect.php");
	if(!isset($_SESSION["lichtrinh"])){
		$_SESSION["lichtrinh"]="";
	}
	if (!isset($_REQUEST["page"])){
		$page=1;
	} else { 
		$page = $_REQUEST["page"];
	}
	$num_row=3;
	$sql1 = "SELECT phim.TenPhim, phim_order.IDPhongChieu, lichchieu.ThoiGianChieu from lichchieu
    join phim_order on lichchieu.IDLichChieu = phim_order.IDLichChieu
    join phim on phim_order.IDPhim = phim.IDPhim where LichChieu.ThoiGianChieu>Now() order by lichchieu.ThoiGianChieu"
	;
	$result1 = $conn->query($sql1) or die($conn->error);
    $num_of_page = ceil($result1->num_rows / $num_row);
	if ($page<1) {
		$page = 1;
	} 
	if ($page>$num_of_page){
		$page = $num_of_page;
	}
	$sql = "SELECT phim_order.IDLichTrinh, phim.TenPhim, phim_order.IDPhongChieu, lichchieu.ThoiGianChieu from lichchieu
    join phim_order on lichchieu.IDLichChieu = phim_order.IDLichChieu
    join phim on phim_order.IDPhim = phim.IDPhim where LichChieu.ThoiGianChieu>Now() order by lichchieu.ThoiGianChieu DESC limit " . $num_row*($page-1).",".$num_row;
	$result = $conn->query($sql) or die($conn->error);	
?>


<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
			<center color=red><?php echo $_SESSION["lichtrinh"]?></center>
			<h1 align=center>List of Product</h1>
            <center><a href="add_lichtrinh.php">Them Lich Trinh</a></center>
			<table border=1 width=100%>
				<tr>
					<th>Tên phim</th>
                    <th>Phòng Chiếu</th>
                    <th>Lịch Chiếu</th>
					<th>Xóa</th>
				</tr>
				<?php 
					if ($result->num_rows == 0){
						echo "<tr><td colspan = 4>No result!</td></tr>";
					} else {
						while ($row=$result->fetch_assoc()){
				?>
					<tr>
						<td><?php echo $row["TenPhim"];?></td>
						<td><?php echo $row["IDPhongChieu"];?></td>
						<td><?php echo $row["ThoiGianChieu"];?></td>
						<td><a href="del_lichtrinh.php?IDLichTrinh=<?php echo $row["IDLichTrinh"]?>">Xóa</a></td>
					</tr>
				<?php 				
						}
					}
				?>
			</table>
			<center>
				<?php 
					for($i=1;$i<=$num_of_page;$i++){
						if ($i == $page){
							echo " ".$i." ";
						} else {
							echo " <a href=lichtrinh.php?page=".$i.">".$i."</a> ";
						}
						
					}
				?>
			</center>
	</body>
</html>
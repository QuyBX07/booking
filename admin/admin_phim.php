<?php 
	session_start();
	if(!isset($_SESSION["IDAdmin"])){
        header("location: ../testdangnhapadmin/loginadmin.php");
    }
	include("../movie-ticket/connect.php");
	if (!isset($_REQUEST["page"])){
		$page=1;
	} else { 
		$page = $_REQUEST["page"];
	}
	$num_row=3;
	$sql1 = "select * from phim";
	$result1 = $conn->query($sql1) or die($conn->error);
    $num_of_page = ceil($result1->num_rows / $num_row);
	if ($page<1) {
		$page = 1;
	} 
	if ($page>$num_of_page){
		$page = $num_of_page;
	}
	$sql = "select * from phim limit " . $num_row*($page-1).",".$num_row;
	//echo $num_of_page;
	$result = $conn->query($sql) or die($conn->error);	
?>


<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
			<h1 align=center>List of Product</h1>
            <center><a href="add_phim.php">Them phim</a></center>
			<table border=1 width=100%>
				<tr>
					<th>Tên phim</th>
                    <th>Ảnh</th>	
                    <th>Thời Lượng</th>
                    <th>Thể Loại</th>
                    <th>Nhà Sản Xuất</th>
                    <th>Sửa</th> 
				</tr>
				<?php 
					if ($result->num_rows == 0){
						echo "<tr><td colspan = 6>No result!</td></tr>";
					} else {
						while ($row=$result->fetch_assoc()){
				?>
					<tr>
						<td><?php echo $row["TenPhim"];?></td>
						<td><img src="../aovis/img/<?php echo $row["AnhChinh"];?>" width=160px></td>
						<td><?php echo $row["ThoiLuong"];?></td>
						<td><?php echo $row["TheLoai"];?></td>
						<td><?php echo $row["NhaSanXuat"];?></td>
						<td><a href = "edit_phim.php?IDPhim=<?php echo $row["IDPhim"]?>">Sửa</a></td>
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
							echo " <a href=admin_phim.php?page=".$i.">".$i."</a> ";
						}
						
					}
				?>
			</center>
	</body>
</html>
<?php 
	session_start();
	if(!isset($_SESSION["IDAdmin"])){
        header("location: ../testdangnhapadmin/loginadmin.php");
    }
	if(!isset($_SESSION["add_lichtrinh"])){
		$_SESSION["add_lichtrinh"]= "";
	}
    include("../movie-ticket/connect.php");
    $sql = "select * from phongchieu";
    $result = $conn->query($sql);
    $sql_phim = "select * from phim";
    $result_phim = $conn->query($sql_phim);
?>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			.width{
				width:250px;
			}
		</style>
	</head>
	<body>
		<h1 align=center>Thêm lịch chiếu phim mới</h1>
		<center><font color=red><?php echo $_SESSION["add_lichtrinh"]?></font></center>
		<form method=POST action="add_lichtrinh_action.php">
		<table align=center border=0>
			<tr>
				<td align=right>Tên Phim:</td>
                <td>
				<select name ="txtTenPhim">
                    <?php
                        while($row1=$result_phim->fetch_assoc()){
                    ?>
                    <option value="<?php echo $row1["IDPhim"]?>"><?php echo $row1["TenPhim"]?></option>
                    <?php
                    }
                    ?>
                </select>
                </td>
			</tr>
			
			<tr>
				<td valign=top align=right>Phòng Chiếu:</td>
                <td>
				<select name ="txtPhongChieu">
                    <?php
                        while($row=$result->fetch_assoc()){
                    ?>
                    <option value="<?php echo $row["IDPhongChieu"]?>"><?php echo $row["IDPhongChieu"]?></option>
                    <?php
                    }
                    ?>
                </select>
                <td>
			</tr>

            <tr>
				<td valign=top align=right>Lịch Chiếu:</td>
				<td><input type=datetime-local name=txtLichChieu class=width></td>
			</tr>
			
			<tr>
				<td align=right><input type=submit value="Add new"></td>
				<td><input type=reset></td>
			</tr>
		</table>
		</form>
        
	</body>
</html>
<?php
session_start();
if(!isset($_SESSION["IDKhachHang"])){
	header("location: ../testdangky/login.php");
};
include("../connect.php");
$IDKhachHang = $_SESSION["IDKhachHang"];
$sql = "SELECT DISTINCT DATE(lichchieu.ThoiGianChieu) AS NgayChieu ,phim.TenPhim, phim.AnhChinh,
CONCAT(
  LPAD(HOUR(lichchieu.ThoiGianChieu), 2, '0'), ':',
  LPAD(MINUTE(lichchieu.ThoiGianChieu), 2, '0'), ':',
  LPAD(SECOND(lichchieu.ThoiGianChieu), 2, '0')
) AS ThoiGian, booking.phongchieuID, booking.SoGhe,  bookingID FROM phim 
join booking on phim.IDPhim = booking.movieID
join lichchieu on booking.lichchieuID = lichchieu.IDLichChieu
where userID=".$IDKhachHang." and lichchieu.ThoiGianChieu>NOW()";

$sql_khachHang = "select * from khachhang where IDKhachHang = ".$IDKhachHang."";
$result_khachhang = $conn->query($sql_khachHang);
$row_khachhang= $result_khachhang->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Dashboard</title>
    <link rel="icon" type="image/png" href="../../web/images/logo.png">
    <link rel="stylesheet" href="../../web/css/style-main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="../../web/css/style-seats.css" />

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-datatables/0.6.4/angular-datatables.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script src="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">

    <link rel="stylesheet" href="../../web/css/bootstrap-4-5-2-modified.css">
<style>.td-small {
  width: 410px;
  max-width: 410px;
}</style>

<style>
    *, *::before, *::after {
    box-sizing: border-box;
}

.admin-section-header {
    color: #FFF;
    width: 100%;
    background-color: #3a3a3a;
    display: grid;
    grid-template-columns: 1fr 5fr;
    margin-right: 12px;
}

*, *::before, *::after {
    box-sizing: border-box;
}
* {
    box-sizing: border-box;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Lato', sans-serif;
    text-decoration: none;
    color: unset;
}
user agent stylesheet
div {
    display: block;
}
body {
    margin: 0;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: left;
    background-color: #fff;
}
:root {
    --blue: #007bff;
    --indigo: #6610f2;
    --purple: #6f42c1;
    --pink: #e83e8c;
    --red: #dc3545;
    --orange: #fd7e14;
    --yellow: #ffc107;
    --green: #28a745;
    --teal: #20c997;
    --cyan: #17a2b8;
    --white: #fff;
    --gray: #6c757d;
    --gray-dark: #343a40;
    --primary: #007bff;
    --secondary: #6c757d;
    --success: #28a745;
    --info: #17a2b8;
    --warning: #ffc107;
    --danger: #dc3545;
    --light: #f8f9fa;
    --dark: #343a40;
    --breakpoint-xs: 0;
    --breakpoint-sm: 576px;
    --breakpoint-md: 768px;
    --breakpoint-lg: 992px;
    --breakpoint-xl: 1200px;
    --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
}
html {
    font-family: sans-serif;
    line-height: 1.15;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.admin-logo {
    padding: 20px 10px;
    background-color: #5f5f5f;
}

.admin-login-info i {
    margin: 0 10px;
    cursor: pointer;
    margin-right: 12px;
}

.fa, .far, .fas {
    font-family: "Font Awesome 5 Free";
}
.fab, .far {
    font-weight: 400;
}
.fa, .fab, .fad, .fal, .far, .fas {
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering: auto;
    line-height: 1;
}

.admin-login-info {
    display: flex;
    align-items: center;
    justify-content: flex-end;
}

.admin-section1 {
    background-color: #3a3a3a;
    height: 100%;
}

.admin-container {
    display: grid;
    grid-template-columns: 1fr 5fr;
}

.admin-section2 {
    display: flex;
    flex-wrap: wrap;
    padding: 0 4px;
}

.admin-section-column-table {
    flex: 50%;
    max-width: 70%;
    padding: 0 10px;
}

.admin-section-stats {
    display: flex;
    padding: 20px 0;
}
.admin-section-panel {
    width: 100%;
    vertical-align: middle;
    background-color: #FFF;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.40);
    -moz-box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.40);
    box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.40);
    padding: 20px;
    margin: 20px 0;
}

.admin-section-stats-panel>i {
    font-size: 30px;
    color: white;
    height: 60px;
    width: 60px;
    border-radius: 50%;
    line-height: 60px;
    transition: all 0.5s ease;
    margin-bottom: 10px;
}

.fa-ticket-alt:before {
    content: "\f3ff";
}

.fa, .fas {
    font-weight: 900;
}

 .fab, .fad, .fal, .far, .fas {
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: inline-block;
    font-style: normal;
    font-variant: normal;
    text-rendering: auto;
    line-height: 1;
}

.vitri::before {
    position: relative;
    left : 12px;
}
    </style>
</head>

<body >
<!-- style="background-color:grey;" -->
    <?php
    ?>
    <div class="admin-section-header">
        <div class="admin-logo">
            CINEMAX
        </div>
        <div class="admin-login-info">
            Xin Chào: <i><?php echo $row_khachhang["TenKH"]?></i>
            <!-- <i class="far fa-bell admin-notification-button"></i>
            <i class="far fa-comment-alt"></i> -->
            <a href="../../testdangky/logout.php"> / logout here</a>
        </div>
    </div>
    <div class="admin-container">
        <div class="admin-section admin-section1 ">
        </div>

        <div class="admin-section admin-section2" ng-app="crudUserBookingsApp" ng-controller="crudUserBookingsController" ng-init="user_profile='<?php echo $user['email']; ?>'">
            <div class="admin-section-column-table">
                <div class="admin-section-panel admin-section-stats">
                    <div class="admin-section-stats-panel">
                        <i class="fas fa-ticket-alt vitri" style="background-color: #cf4545"></i>
                        <h2 style="color: #cf4545"><?php 
                                                    ?></h2>
                        <h3>Bookings</h3>


                    </div>
                    
                </div>
                <div class="admin-section-panel admin-section-panel1">
                    <div class="admin-panel-section-header">
                        <h2>Your Bookings</h2>
                    </div>
                    <div class="admin-panel-section-content" >
                    <table border=1 width=100%>
				<tr>
					<th>Tên phim</th>
                    <th>Ảnh</th>	
                    <th>Ngày Chiếu</th>
                    <th>Giờ Chiếu</th>
                    <th>Phòng Chiếu</th>
                    <th>Số Ghế</th>
                    <th>Hủy</th> 
				</tr>
                <tr>
                <?php 
                $result = $conn->query($sql);
					if ($result->num_rows == 0){
						echo "<tr><td colspan = 7>Không có vé</td></tr>";
					} else {
						while ($row=$result->fetch_assoc()){
				?>
					<tr>
						<td><?php echo $row["TenPhim"];?></td>
						<td><img src="../img/<?php echo $row["AnhChinh"];?>" width=60px></td>
						<td><?php echo $row["NgayChieu"];?></td>
						<td><?php echo $row["ThoiGian"];?></td>
						<td><?php echo $row["phongchieuID"];?></td>
                        <td><?php echo $row["SoGhe"];?></td>
						<td><a href ="delete_booking.php?IDBooking=<?php echo $row["bookingID"]?>">Hủy</a></td>
					</tr>
				<?php 				
						}
					}
				?>
                </tr>
			</table>
                    </div>
                </div>

                <div class="admin-panel-section-content"></div>
            </div>
        </div>
    </div>

</body>

</html>

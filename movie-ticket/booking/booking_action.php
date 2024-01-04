<?php
include("../connect.php");


$IDPhim = $_POST["IDPhim"];
$IDKhachHang = $_POST["IDKhachHang"];
$NgayChieu = $_POST["NgayChieu"];
$GioChieu = $_POST["GioChieu"];
$LichChieu = $NgayChieu . " " . $GioChieu;
$IDPhongChieu = $_POST["PhongChieu"];
$SoGhe = $_POST["SoGhe"];


$sql = "select * from LichChieu";
$result = $conn->query("$sql");
while ($row = $result->fetch_assoc()){
    if ($LichChieu == $row["ThoiGianChieu"]){
        $IDLichChieu = $row["IDLichChieu"];
    }
}

$sql_booking = "INSERT INTO `booking`( `movieID`, `phongchieuID`, `lichchieuID`, `userID`, `SoGhe`)
         VALUES ($IDPhim,$IDPhongChieu,$IDLichChieu,$IDKhachHang,'$SoGhe')";
 $result = $conn->query("$sql_booking") or die;

 if ($conn->error==""){
    echo 1;
} else {
   echo $sql_booking;
}

?>
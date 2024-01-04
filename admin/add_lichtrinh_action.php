<?php
require_once("../movie-ticket/connect.php");
session_start();
$TenPhim = $_POST["txtTenPhim"];
$PhongChieu = $_POST["txtPhongChieu"];
$dateString = $_POST["txtLichChieu"];

$dateTime = new DateTime($dateString);

$LichChieu = $dateTime->format('Y-m-d H:i:s');
$sql_lich = "select * from lichchieu where ThoiGianChieu='" . $LichChieu . "'";
$result_lich = $conn->query("$sql_lich");
if ($result_lich->num_rows > 0) {
    $_SESSION["add_lichtrinh"] = "Lịch chiếu đã tồn tại";
    header("Location:add_lichtrinh.php");
} else {
    $_SESSION["add_lichtrinh"] = "";
    $sql_insert = "INSERT INTO LichChieu (ThoiGianChieu) VALUES ('" . $LichChieu . "')";
    $conn->query($sql_insert);

    $lastLichChieuID = $conn->insert_id;

    $sql_insert_phim_order = "INSERT INTO phim_order (IDPhim, IDPhongChieu, IDLichChieu) VALUES (" . $TenPhim . ", " . $PhongChieu . ", " . $lastLichChieuID . ")";
    $conn->query($sql_insert_phim_order) or die($conn->error);
    if ($conn->error == "") {
        $_SESSION["lichtrinh"] = "Insert successful!";
        header("Location: lichtrinh.php");
    }
}

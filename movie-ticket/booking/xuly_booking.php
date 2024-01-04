<?php
include("../connect.php");
$action = $_POST["action"];

switch ($action) {
    case "SetGioChieu":
        $IDKhachHang = $_POST["IDKhachHang"];
        $IDPhim = $_POST["IDPhim"];
        $NgayChieu = $_POST["NgayChieu"];
?>
        <select id="GioChieuSelect" name="txtGioChieu">
            <option>Time</option>
            <?php
            $sql_date = "SELECT DISTINCT
                CONCAT(
                  LPAD(HOUR(lichchieu.ThoiGianChieu), 2, '0'), ':',
                  LPAD(MINUTE(lichchieu.ThoiGianChieu), 2, '0'), ':',
                  LPAD(SECOND(lichchieu.ThoiGianChieu), 2, '0')
                ) AS ThoiGian, lichchieu.IDLichChieu
              FROM lichchieu
              JOIN phim_order ON lichchieu.IDLichChieu = phim_order.IDLichChieu
              WHERE phim_order.IDPhim =" . $IDPhim . " and DATE(lichchieu.ThoiGianChieu) = '" . $NgayChieu . "'
              group by ThoiGian";
            $result_date = $conn->query($sql_date);
            while ($row = $result_date->fetch_assoc()) {
            ?>
                <option value="<?php echo $row["ThoiGian"] ?>"><?php echo $row["ThoiGian"] ?></option>
            <?php
            }
            ?>
        </select>
    <?php
        break;

    case "SetPhong":
        $IDKhachHang = $_POST["IDKhachHang"];
        $IDPhim = $_POST["IDPhim"];
        $NgayChieu = $_POST["NgayChieu"];
        $GioChieu = $_POST["GioChieu"];
        $LichChieu = $NgayChieu . " " . $GioChieu;
    ?>
        <select id="PhongChieuSelect" name="txtPhongChieu">
            <option>Room</option>
            <?php
            $sql_date = "select phongchieu.IDPhongChieu from phongchieu
                        join phim_order on phongchieu.IDPhongChieu = phim_order.IDPhongChieu
                        join lichchieu on phim_order.IDLichChieu = lichchieu.IDLichChieu
                        where phim_order.IDPhim = " . $IDPhim . " and lichchieu.ThoiGianChieu = '" . $LichChieu . "'";
            $result_date = $conn->query($sql_date);
            while ($row = $result_date->fetch_assoc()) {
            ?>
                <option value="<?php echo $row["IDPhongChieu"] ?>"><?php echo $row["IDPhongChieu"] ?></option>
            <?php
            }
            ?>
        </select>
    <?php
        break;

    case "SetGhe":
        $IDKhachHang = $_POST["IDKhachHang"];
        $IDPhim = $_POST["IDPhim"];
        $NgayChieu = $_POST["NgayChieu"];
        $GioChieu = $_POST["GioChieu"];
        $LichChieu = $NgayChieu." ".$GioChieu;
        $PhongChieu = $_POST["PhongChieu"];

        $sql_idlich = "select * from LichChieu";
        $result_lich = $conn->query("$sql_idlich");
        while ($row = $result_lich->fetch_assoc()) {
            if ($LichChieu == $row["ThoiGianChieu"]) {
                $IDLichChieu = $row["IDLichChieu"];
            }
        }
    ?>
        <select style="min-width:750px" name="txtSoGhe">
            <?php
            $sql_seat = "SELECT ghe.SoGhe FROM ghe WHERE NOT EXISTS ( SELECT SoGhe FROM booking WHERE booking.phongchieuID = ".$PhongChieu." AND booking.lichchieuID = ".$IDLichChieu." AND booking.SoGhe = ghe.SoGhe ) GROUP by SoGhe;";
            $result_seat = $conn->query($sql_seat);
            while ($row = $result_seat->fetch_assoc()) {
            ?>
                <option value="<?php echo $row["SoGhe"] ?>"><?php echo $row["SoGhe"] ?></option>
            <?php
            }
            ?>
        </select>
<?php
    break;
}
?>
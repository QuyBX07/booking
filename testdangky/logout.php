<?php

session_start();

if(isset($_SESSION['IDKhachHang']))
{
	unset($_SESSION['IDKhachHang']);

}

header("Location: login.php");
die;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2023 lúc 02:23 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `IDAdmin` int(10) NOT NULL,
  `PassWord` varchar(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`IDAdmin`, `PassWord`, `UserName`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(2, 'cogisai', 'dep trai', 'duyquy0702@gmail.com'),
(3, 'nani', 'VuCute', 'quy@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `phongchieuID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `SoGhe` varchar(10) NOT NULL,
  `lichchieuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`bookingID`, `movieID`, `phongchieuID`, `userID`, `SoGhe`, `lichchieuID`) VALUES
(1, 3, 1, 3, 'A3', 1),
(11, 3, 1, 3, 'A0', 2),
(13, 5, 2, 4, 'A1', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `ThoiGianFB` datetime NOT NULL,
  `IDKhachHang` int(11) NOT NULL,
  `IDPhim` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`ThoiGianFB`, `IDKhachHang`, `IDPhim`, `comment`) VALUES
('2023-11-26 15:45:36', 3, 3, 'dung phim vo cung kinh di luon lam sao cung khong het kinh di'),
('2023-11-26 16:04:32', 3, 5, 'phim hay nhất về game mà tôi từng xem các bạn ạ cái gì mà Son lại đá kinh hơn cả Ronaldo béo chạy nhanh hơn cả CR7 rồi đánh đầu kinh hơn Lewan kĩ thuật hơn cả neymar lắt léo hơn cả messi đúng con cưng'),
('2023-12-18 05:34:50', 1, 4, 'hi hi'),
('2023-12-20 06:18:31', 3, 3, 'coi hai vai chuong'),
('2023-12-21 13:09:21', 1, 3, 'ngon lanh roi'),
('2023-12-22 06:39:34', 4, 3, 'em thích xem phim này lắm'),
('2023-12-22 06:39:59', 4, 4, 'trời coi sợ dễ sợ luôn á'),
('2023-12-22 06:40:49', 4, 8, 'thấy thích kong hơn là god'),
('2023-12-22 06:41:18', 4, 6, 'nhìn mấy thằng tàu khựa này ghét quá trời ghét');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `IDGhe` int(11) NOT NULL,
  `SoGhe` varchar(10) NOT NULL,
  `IDPhongChieu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`IDGhe`, `SoGhe`, `IDPhongChieu`) VALUES
(127, 'A1', 1),
(128, 'A2', 1),
(129, 'A3', 1),
(130, 'A4', 1),
(131, 'A5', 1),
(132, 'A6', 1),
(133, 'A7', 1),
(134, 'A8', 1),
(135, 'A9', 1),
(136, 'A0', 1),
(137, 'B1', 1),
(138, 'B2', 1),
(139, 'B3', 1),
(140, 'B4', 1),
(141, 'B5', 1),
(142, 'B6', 1),
(143, 'B7', 1),
(144, 'B8', 1),
(145, 'B9', 1),
(146, 'B0', 1),
(147, 'C1', 1),
(148, 'C2', 1),
(149, 'C3', 1),
(150, 'C4', 1),
(151, 'C5', 1),
(152, 'C6', 1),
(153, 'C7', 1),
(154, 'C8', 1),
(155, 'C9', 1),
(156, 'C0', 1),
(157, 'A1', 2),
(158, 'A2', 2),
(159, 'A3', 2),
(160, 'A4', 2),
(161, 'A5', 2),
(162, 'A6', 2),
(163, 'A7', 2),
(164, 'A8', 2),
(165, 'A9', 2),
(166, 'A0', 2),
(167, 'B1', 2),
(168, 'B2', 2),
(169, 'B3', 2),
(170, 'B4', 2),
(171, 'B5', 2),
(172, 'B6', 2),
(173, 'B7', 2),
(174, 'B8', 2),
(175, 'B9', 2),
(176, 'B0', 2),
(177, 'C1', 2),
(178, 'C2', 2),
(179, 'C3', 2),
(180, 'C4', 2),
(181, 'C5', 2),
(182, 'C6', 2),
(183, 'C7', 2),
(184, 'C8', 2),
(185, 'C9', 2),
(186, 'C0', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `IDKhachHang` int(10) NOT NULL,
  `SĐT` int(10) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `CMND` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`IDKhachHang`, `SĐT`, `TenKH`, `CMND`, `PassWord`, `UserName`, `Email`) VALUES
(1, 353248808, 'Võ Duy Quý', '0102030405', 'quydeptrai', 'quyconguoiyeu', 'quy@gmail.com'),
(3, 34523452, 'Đẹp Trai Nhất Vũ Trụ', '3246234623', '1', '1', ''),
(4, 353248808, 'Duy Quy', '020203001044', 'QuySieuCute', 'QuyCute', 'duyquybaixa@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `IDLichChieu` int(11) NOT NULL,
  `ThoiGianChieu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`IDLichChieu`, `ThoiGianChieu`) VALUES
(1, '2023-12-28 20:00:00'),
(2, '2023-12-28 22:00:50'),
(3, '2023-12-29 18:00:00'),
(4, '2023-12-29 22:00:00'),
(5, '2023-12-24 16:00:00'),
(6, '2023-12-26 11:00:00'),
(7, '2023-12-20 15:35:18'),
(8, '2023-12-31 21:44:00'),
(9, '2024-01-01 22:49:00'),
(10, '2023-12-30 23:51:00'),
(11, '2023-12-27 22:00:00'),
(12, '2023-12-28 22:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `IDPhim` int(10) NOT NULL,
  `TenPhim` varchar(50) NOT NULL,
  `TheLoai` varchar(50) NOT NULL,
  `NgonNgu` varchar(50) NOT NULL,
  `QuocGia` varchar(50) NOT NULL,
  `NhaSanXuat` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `LichChieu` date NOT NULL,
  `AnhChinh` varchar(50) NOT NULL,
  `AnhThem` varchar(50) NOT NULL,
  `Trailer` text NOT NULL,
  `DaoDien` varchar(50) NOT NULL,
  `ThoiLuong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`IDPhim`, `TenPhim`, `TheLoai`, `NgonNgu`, `QuocGia`, `NhaSanXuat`, `detail`, `LichChieu`, `AnhChinh`, `AnhThem`, `Trailer`, `DaoDien`, `ThoiLuong`) VALUES
(3, 'Chú Hề Ma Quát', 'Kinh Dị', '120', 'Mĩ', 'Hollywood', '\"Chú Hề Ma Quái\" là một bộ phim hình sự kinh dị, xoay quanh câu chuyện về một chú hề tên Pennywise, nguyên tác được tạo ra bởi nhà văn Stephen King. Thị trấn nhỏ Derry bắt đầu chứng kiến những biến cố kinh hoàng khi một nhóm bạn thanh thiếu niên phát hiện ra sự xuất hiện của chú hề ma quái trong các cống rãnh. Pennywise không chỉ xuất hiện dưới hình dạng của một chú hề, mà còn biến hình thành những điều kinh hoàng khác để làm sợ hãi và săn đuổi nhóm bạn. Bộ phim đi sâu vào tâm lý của nhân vật, kết hợp kỹ xảo đặc sắc và âm nhạc gây ám ảnh, tạo nên một không khí u ám và kinh dị đáng sợ. \"Chú Hề Ma Quái\" không chỉ là một tác phẩm giải trí mà còn là một cái nhìn ', '2023-11-28', 'chuhemaquai.jpg', 'chuhemaquai2.jpg', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/RLUk88gMF_0\" title=\"Phim Kinh dị &quot;IT / Chú Hề Ma Quái&quot; Official Trailer\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'quydeptra', 120),
(4, 'Tết Làng Địa Ngục', 'Kinh Dị', 'Tiếng Việt', 'Việt Nam', 'Võ Quý', 'Bộ phim \"Làng Địa Ngục\" là một tác phẩm hài hước và sôi động, đã tạo nên một không khí rộn ràng và vui tươi đặc trưng của không khí tết truyền thống ở nông thôn Việt Nam. Dưới đèn đỏ lừng lẫy của các lồng đèn tết, làng quê bắt đầu bước vào một mùa xuân mới, nhưng với một phong cách và cốt truyện độc đáo.\r\n\r\nCâu chuyện xoay quanh những nhân vật hài hước và đội ngũ diễn viên tài năng đưa khán giả vào hành trình trải nghiệm tết đầy thú vị. Từ những trò chơi dân gian sôi động tới những bữa tiệc tất niên ấm cúng, mọi người trong làng cùng nhau tận hưởng không khí phấn khích của mùa xuân.\r\n\r\nKhông chỉ là một bức tranh về sự hồn nhiên và ấm áp của đồng bào nông thôn trong dịp tết, \"Làng Địa Ngục\" còn châm biếm những hiểu lầm và những tình huống hài hước mà người ta thường gặp trong những buổi liên hoan tết. Những màn hài độc đáo và lối diễn xuất tự nhiên tạo nên tiếng cười không ngừng, mang lại cho khán giả cơ hội thư giãn và thoải mái giữa không khí tết tươi vui và hạnh phúc.', '2023-11-30', 'tetolangdianguc.jpg', 'tetolangdianguc2.jpg', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/C2V38ghWHlQ\" title=\"TẾT Ở LÀNG ĐỊA NGỤC | Official Trailer | K+ORIGINAL -  PS: 20h T2, T3 hàng tuần, từ 23/10 trên K+\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'lmao', 103),
(5, 'FiFa online', 'Soccer', 'Tiếng Anh', 'Anh', 'EASport', 'Trên sân cỏ rộng lớn, những cầu thủ đầy nhiệt huyết nối kết qua mỗi cú chạy và cú sút, tạo nên một bức tranh sống động ận đấu bóng đá diễn ra quyết liệt giữa hai đội. Những cầu thủ chạy lung tung, đổi hướng với tốc độ nhanh như cơn gió, tạo nên một bức tranh sống động của sức mạnh và kỹ thuật. Bóng lăn từ chân này sang chân khác, mỗi cú sút là một thách thức mới đầy kịch tính.\r\n\r\nÁnh đèn sân chiếu sáng, làm bóng lọt qua từng góc sân, làm nổi bật những khoảnh khắc đẹp nhất. Tiếng nổ lịch sự từ các khán đài truyền đến, tạo nên không khí hỗn hợp của niềm vui và hồi hộp. Các cầu thủ, trong chiếc áo đấu ươm màu, biểu tượng của đội tuyển, không ngừng cống hiến, với mục tiêu chiến thắng rực rỡ.\r\n\r\nSân đấu không chỉ là nơi thể hiện tài năng và sức mạnh, mà còn là nơi hội tụ đam mê của hàng triệu trái tim yêu bóng. Mỗi trận đấu là một hành trình, mỗi bàn thắng là một khoảnh khắc tri ân sự nỗ lực và hi sinh của từng người hùng trên sân. Bóng đá không chỉ là môn thể thao, mà còn là ngôn ngữ giao tiếp của niềm vui và đoàn kết.\r\n\r\n\r\n\r\n\r\n', '2023-11-23', 'fifaonline.jpg', 'fifaonline2.jpg', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/xTKuUFo2DCA\" title=\"FC Online Chính Thức Xuất Hiện | Official Launching Trailer\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'awid', 120),
(6, 'Ninh An Như Mộng', 'Cổ Trang', '112', 'tàu', 'tàu', 'Câu chuyện diễn ra trong một thế giới hoàn toàn thay đổi sau đại dịch zombie, nơi mà xác sống rình rập ở mọi nơi. Nhóm của Rick di chuyển qua nhiều địa điểm, từ khu dân cư hoang tàn đến rừng rậm, thành phố bỏ hoang và những nơi dựa vào năng lượng tái tạo để duy trì sự sống sót.', '2023-11-14', 'ninhannhumong.jpg', 'ninhannhumong2.jpg', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/PMjwNiFMB4k\" title=\"Trailer | Ninh An Như Mộng | Bạch Lộc,Trương Lăng Hách | iQIYI Vietnam\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'quy dep trai', 112),
(8, 'Godzilla', 'Viễn Tưởng', 'Anh', 'Mĩ Tho', 'Kim Đồng', '\r\n\"Godzilla\" là một bộ phim kinh điển nổi tiếng, xoay quanh quái vật khổng lồ Godzilla - biểu tượng của thể loại kaiju. Với đồ họa ấn tượng và cốt truyện đầy hấp dẫn, bộ phim tái hiện cuộc chiến giữa Godzilla và các quái vật khác, đồng thời phản ánh những tác động tiêu cực của hoạt động con người đối với môi trường. Những pha hành động đỉnh cao, cùng âm nhạc ấn tượng, tạo nên trải nghiệm điện ảnh đặc sắc. \"Godzilla\" không chỉ là một tác phẩm giải trí, mà còn là thông điệp cảnh báo về sức mạnh tự nhiên và tầm quan trọng của sự cân nhắc trong quản lý tài nguyên và môi trường.', '2024-01-02', 'godzila.png', 'godzilla2.png', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/5XkgG_AAQs0\" title=\"Godzilla x Kong : Đế Chế Mới | Official Trailer\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'NoBiTa', 145),
(9, 'The Walking Dead', 'Kinh Dị', 'Anh', 'Mĩ', 'Hollywood', '\"The Walking Dead\" bắt đầu khi một đại dịch zombie bí ẩn lan rộng trên khắp thế giới, biến hầu hết dân số thành xác sống đói khát máu. Câu chuyện tập trung vào một nhóm người sống sót, chủ yếu là cựu cảnh sát Rick Grimes và nhóm của anh ta. Họ phải đối mặt không chỉ với nguy cơ từ zombie mà còn với những đám người sống sót tàn ác, nguy hiểm. Bộ truyện nhanh chóng phát triển thành một hành trình kiếm tìm nơi an toàn và nỗ lực duy trì sự sống sót.', '2023-12-30', 'thewalkingdead.png', 'thewalkingdead2.png', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/iTOaFootkSk\" title=\"The Walking Dead: Daryl Dixon Official Trailer\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Rick Grimes', 156);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim_order`
--

CREATE TABLE `phim_order` (
  `IDLichTrinh` int(11) NOT NULL,
  `IDPhim` int(11) NOT NULL,
  `IDPhongChieu` int(11) NOT NULL,
  `IDLichChieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim_order`
--

INSERT INTO `phim_order` (`IDLichTrinh`, `IDPhim`, `IDPhongChieu`, `IDLichChieu`) VALUES
(1, 3, 1, 1),
(2, 3, 1, 2),
(3, 4, 1, 3),
(4, 4, 1, 4),
(6, 6, 2, 6),
(7, 3, 1, 7),
(8, 6, 2, 9),
(9, 9, 2, 10),
(10, 8, 2, 11),
(11, 5, 2, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongchieu`
--

CREATE TABLE `phongchieu` (
  `IDPhongChieu` int(11) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phongchieu`
--

INSERT INTO `phongchieu` (`IDPhongChieu`, `TrangThai`) VALUES
(1, 0),
(2, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDAdmin`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `FK_booking_PhongChieu` (`phongchieuID`),
  ADD KEY `FK_booking_lichchieu` (`lichchieuID`),
  ADD KEY `movieID` (`movieID`),
  ADD KEY `fk_book_IDKhachHang` (`userID`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `fk_IDKhachHang` (`IDKhachHang`),
  ADD KEY `fk_IDPhim` (`IDPhim`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`IDGhe`),
  ADD KEY `FK_ghe_phongchieu` (`IDPhongChieu`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`IDKhachHang`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`IDLichChieu`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`IDPhim`);

--
-- Chỉ mục cho bảng `phim_order`
--
ALTER TABLE `phim_order`
  ADD PRIMARY KEY (`IDLichTrinh`),
  ADD KEY `IDPhongChieu` (`IDPhongChieu`),
  ADD KEY `IDLichChieu` (`IDLichChieu`),
  ADD KEY `IDPhim` (`IDPhim`);

--
-- Chỉ mục cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD PRIMARY KEY (`IDPhongChieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `IDAdmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `IDGhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `IDKhachHang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `IDLichChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `IDPhim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phim_order`
--
ALTER TABLE `phim_order`
  MODIFY `IDLichTrinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  MODIFY `IDPhongChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_PhongChieu` FOREIGN KEY (`phongchieuID`) REFERENCES `phongchieu` (`IDPhongChieu`),
  ADD CONSTRAINT `FK_booking_lichchieu` FOREIGN KEY (`lichchieuID`) REFERENCES `lichchieu` (`IDLichChieu`),
  ADD CONSTRAINT `FK_movieID` FOREIGN KEY (`movieID`) REFERENCES `phim` (`IDPhim`),
  ADD CONSTRAINT `fk_book_IDKhachHang` FOREIGN KEY (`userID`) REFERENCES `khachhang` (`IDKhachHang`),
  ADD CONSTRAINT `movieID` FOREIGN KEY (`movieID`) REFERENCES `phim` (`IDPhim`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_IDKhachHang` FOREIGN KEY (`IDKhachHang`) REFERENCES `khachhang` (`IDKhachHang`),
  ADD CONSTRAINT `fk_IDPhim` FOREIGN KEY (`IDPhim`) REFERENCES `phim` (`IDPhim`);

--
-- Các ràng buộc cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `FK_ghe_phongchieu` FOREIGN KEY (`IDPhongChieu`) REFERENCES `phongchieu` (`IDPhongChieu`);

--
-- Các ràng buộc cho bảng `phim_order`
--
ALTER TABLE `phim_order`
  ADD CONSTRAINT `IDLichChieu` FOREIGN KEY (`IDLichChieu`) REFERENCES `lichchieu` (`IDLichChieu`),
  ADD CONSTRAINT `IDPhim` FOREIGN KEY (`IDPhim`) REFERENCES `phim` (`IDPhim`),
  ADD CONSTRAINT `IDPhongChieu` FOREIGN KEY (`IDPhongChieu`) REFERENCES `phongchieu` (`IDPhongChieu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

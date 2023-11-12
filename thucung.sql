-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2023 lúc 02:34 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thucung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_taikhoan`, `id_sanpham`, `noidung`) VALUES
(19, 15, 3, 'Sản phẩm dùng rất tốt.'),
(27, 22, 3, 'gia re'),
(28, 5, 3, 'Thanks b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `gia`) VALUES
(37, 43, 5, 1, 7490000),
(38, 43, 4, 1, 9190000),
(41, 45, 9, 2, 11790000),
(47, 50, 17, 3, 4990000),
(48, 50, 10, 1, 27000000),
(50, 51, 3, 1, 39490000),
(55, 53, 20, 2, 6290000),
(56, 54, 3, 2, 39490000),
(57, 54, 22, 1, 10000000),
(58, 55, 23, 2, 66666),
(59, 55, 20, 1, 6290000),
(60, 55, 22, 2, 10000000),
(61, 49, 3, 1, 39490000),
(62, 49, 10, 1, 27000000),
(63, 49, 19, 1, 10020000),
(64, 49, 30, 1, 98000),
(68, 57, 3, 1, 39490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`) VALUES
(1, 'Thức ăn chó mèo'),
(3, 'Quần áo'),
(4, 'Vật dụng ăn uống'),
(5, 'Đồ chơi cho Pet'),
(6, 'Mỹ phẩm & làm đẹp'),
(7, 'Chuồng, Giường, Nhà'),
(8, 'Y tế & Thuốc'),
(9, 'Phụ kiện khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `thoigian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_taikhoan`, `tongtien`, `status`, `diachi`, `thoigian`) VALUES
(43, 15, 16680000, 3, 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', '05-02-2022 21:08:43'),
(45, 16, 23580000, 3, 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', '10-03-2022 21:46:44'),
(54, 21, 88980000, 2, ' hcm vn q9', '09-05-2023 14:38:42'),
(55, 22, 26423332, 2, ' hcm vn q9', '09-05-2023 14:51:00'),
(57, 5, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `nhasanxuat` varchar(255) NOT NULL,
  `loaimoi` varchar(255) NOT NULL,
  `nguyenlieu` varchar(255) NOT NULL,
  `thuonghieu` varchar(255) NOT NULL,
  `baohanh` varchar(255) NOT NULL,
  `xuatxu` varchar(255) NOT NULL,
  `bonho` varchar(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh1` text NOT NULL,
  `anh2` text NOT NULL,
  `anh3` text NOT NULL,
  `chitiet` text NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_danhmuc`, `ten`, `nhasanxuat`, `loaimoi`, `nguyenlieu`, `thuonghieu`, `baohanh`, `xuatxu`, `bonho`, `gia`, `anh1`, `anh2`, `anh3`, `chitiet`, `mota`, `luotxem`, `status`) VALUES
(3, 1, 'Thức ăn dành cho mèo cảnh Royal canin Indoor 27', 'Pháp', 'Mới', 'A15 Bionic', 'Royal Canin là một người khổng lồ trên toàn cầu về dinh dưỡng sức khỏe vật nuôi có trụ sở tại Pháp', '5', '6', '512', 39490000, 'royal-canin-indoor-home-lite-tui-400g-2vetpetshop.png', 'ROYAL_CANIN_SUPERPET-2.jpg', 'Royal-Canin-Indoor-27.jpg', '1- Dịch vụ giao hàng và thu tiền tận nơi COD: áp dụng cho khách hàng tại Hà Nội & Tp.HCM\r\n\r\nSau khi Quý Khách hàng đặt mua hàng tại PetCity.vn, dựa vào các thông tin quý khách cung cấp, nhân viên của chúng tôi sẽ đến tận nơi giao hàng và Quý Khách thanh toán tiền ngay cho nhân viên giao hàng. Trong trường hợp Quý Khách muốn được giao hàng đến 1 địa chỉ khác, Quý Khách sẽ thanh toán trước với chúng tôi tại địa chỉ :\r\n\r\nTại Hà Nội:\r\n\r\n1/ Số 10 Hàm Long, Hoàn Kiếm, Hà Nội \r\n\r\nTel:  024 3933 2727  | Hotline: 0987 612727\r\nThời gian làm việc: Từ 8.00am - 9.30pm (tất cả các ngày)\r\n2/ Số 101 Núi Trúc, Kim Mã, Ba Đình, Hà Nội\r\n\r\nTel:  024 3244 4824  | Hotline: 0987 612727\r\nThời gian làm việc: Từ 8.00am - 9.30pm (tất cả các ngày)\r\nTại Tp.HCM\r\n\r\n1/ Số 174 Cộng Hòa, Phường 12, Quận Tân Bình, Hồ Chí Minh\r\n\r\nTel: 028 3811 2799  | Hotline:1900 2214\r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\n2/ Số 222 Lý Chính Thắng, Quận 3, Hồ Chí Minh\r\n\r\nTel: 028 3526 0717  | Hotline: 1900 2214\r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\nTại Đà Nẵng\r\n\r\n255 Trưng Nữ Vương, quận Hải Châu, Đà Nẵng\r\nTel: 0236 3646 727 \r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\n2- Thanh toán chuyển khoản qua Ngân hàng\r\n\r\nBạn đến bất kỳ ngân hàng nào ở Việt Nam để chuyển tiền theo thông tin bên dưới (bạn không nhất thiết phải có tài khoản ngân hàng).\r\n\r\nSiêu thị PetCity có các tài khoản tại các Ngân hàng sau :\r\n            Vietinbank CN Hoàng Mai\r\n\r\n            Số TK : 106868087203\r\n\r\n            Chủ TK:  Lưu Thị Huyền Mai\r\n\r\n3- Thanh toán qua máy Vietinbank CN Hoàng Mai\r\n\r\nNgoài các phương thức thanh toán trên, Quý khách cũng có thể dùng chuyển khoản bằng hệ thống ATM của ngân hàng  Vietinbank . Quý khách có thể đến bất kỳ máy ATM nào thuộc  Vietinbank  để chuyển khoản cho Petcity theo số tài khoản người nhận như sau :\r\n\r\n             Vietinbank CN Hoàng Mai\r\n\r\n            Số TK : 106868087203\r\n\r\n            Chủ TK:  Lưu Thị Huyền Mai\r\n\r\n4- Thanh toán bằng thẻ Visa, Master, các Thẻ ATM (thanh toán tại cửa hàng): \r\n\r\nQuý khách có thể thanh toán bằng thẻ Visa, Master.. các Thẻ ATM khác trực tiếp tại cửa hàng qua hệ thống máy Chấp nhận thanh toán POS (theo hình thức ưu đãi vẫn như khách hàng thanh toán bằng tiền mặt mà không phải mất phí giao dịch cho tất cả các sản phẩm)\r\n\r\n', 'Hàm lượng năng lượng phù hợp: Bổ sung hàm lượng L-Carnitine giúp cho những chú mèo lười hoạt động duy trì được một cơ thể lý tưởng.', 1576, 0),
(29, 1, 'Royal Canin - Baby Cat 2kg', 'Pháp', 'Mới', 'Bột đậu, lúa mạch, mỡ gà, bắp, bột gluten bắp, gluten lúa mì, bột củ cải đường khô, hương vị tự nhiên,', 'Pháp', '5', '4', '4', 70000, '45a1b8194ae2f8ba498cba03a0ca59b0.jpg', 'images (2).jpg', 'images (2).jpg', 'Để tạo thuận lợi cho việc mua sắm của Quý Khách tại siêu thị PetCity.vn, chúng tôi hỗ trợ Quý khách 6 phương thức thanh toán sau\r\n\r\n1- Dịch vụ giao hàng và thu tiền tận nơi COD: áp dụng cho khách hàng tại Hà Nội & Tp.HCM\r\n\r\nSau khi Quý Khách hàng đặt mua hàng tại PetCity.vn, dựa vào các thông tin quý khách cung cấp, nhân viên của chúng tôi sẽ đến tận nơi giao hàng và Quý Khách thanh toán tiền ngay cho nhân viên giao hàng. Trong trường hợp Quý Khách muốn được giao hàng đến 1 địa chỉ khác, Quý Khách sẽ thanh toán trước với chúng tôi tại địa chỉ :\r\n\r\nTại Hà Nội:\r\n\r\n1/ Số 10 Hàm Long, Hoàn Kiếm, Hà Nội \r\n\r\nTel:  024 3933 2727  | Hotline: 0987 612727\r\nThời gian làm việc: Từ 8.00am - 9.30pm (tất cả các ngày)\r\n2/ Số 101 Núi Trúc, Kim Mã, Ba Đình, Hà Nội\r\n\r\nTel:  024 3244 4824  | Hotline: 0987 612727\r\nThời gian làm việc: Từ 8.00am - 9.30pm (tất cả các ngày)\r\nTại Tp.HCM\r\n\r\n1/ Số 174 Cộng Hòa, Phường 12, Quận Tân Bình, Hồ Chí Minh\r\n\r\nTel: 028 3811 2799  | Hotline:1900 2214\r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\n2/ Số 222 Lý Chính Thắng, Quận 3, Hồ Chí Minh\r\n\r\nTel: 028 3526 0717  | Hotline: 1900 2214\r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\nTại Đà Nẵng\r\n\r\n255 Trưng Nữ Vương, quận Hải Châu, Đà Nẵng\r\nTel: 0236 3646 727 \r\nThời gian làm việc: Từ 8.00am - 9.30pm tất cả các ngày trong tuần\r\n2- Thanh toán chuyển khoản qua Ngân hàng\r\n\r\nBạn đến bất kỳ ngân hàng nào ở Việt Nam để chuyển tiền theo thông tin bên dưới (bạn không nhất thiết phải có tài khoản ngân hàng).', '- Tăng cường hệ miễn dịch tự nhiên \r\n\r\n- Giúp hệ tiêu hóa khỏe mạnh \r\n\r\n- Hỗ trợ quá trình cai sữa ', 6, 1),
(30, 6, 'Lược Furminator cho chó trung lông ngắn', 'Pháp', 'Mới', 'nhựa', 'Pháp', '5', '5', '5', 98000, 'f947f814f288216859f74fbdd6f8bff9.jpg', 'f947f814f288216859f74fbdd6f8bff9.jpg', 'f947f814f288216859f74fbdd6f8bff9.jpg', 'xx', 'xx', 6, 1),
(31, 5, 'Pet gift Box 1', 'p', 'Mới', 'nhựa', 'Pháp', '5', '5', '5', 800000, '4859_boxtinch.jpg', 'f947f814f288216859f74fbdd6f8bff9.jpg', 'images (2).jpg', 's', 's', 4, 1),
(32, 1, 'Vòng cổ dề đệm size 1 : 1.5cm', 'Viet nam', 'Mới', 'nhựa', 'Pháp', '5', '5', '5', 78000, 'vong-co-de-2-lop-cho-meo-1225 (1).jpg', 'vong-co-de-2-lop-cho-meo-1225 (1).jpg', 'vong-co-de-2-lop-cho-meo-1225 (1).jpg', 'd', 'd', 1, 1),
(33, 1, 'Thức Ăn Cho Mèo Con Whiskas Vị Cá Biển Và Sữa', 'Pháp', 'Mới', 'Bột đậu, lúa mạch, mỡ gà, bắp, bột gluten bắp, gluten lúa mì, bột củ cải đường khô, hương vị tự nhiên, aluminat silic natri, dầu thực vật, dầu cá, canxi cacbonat, fructooligosaccharides, ', 'Pháp', '5', '5', '5', 900000, 'thuc-an-cho-meo-con-whiskas-vi-ca-bien-tui-11kg-202105110821521326.jpg', 'thuc-an-cho-meo-con-whiskas-vi-ca-bien-tui-11kg-202105110821521326.jpg', 'thuc-an-cho-meo-con-whiskas-vi-ca-bien-tui-11kg-202105110821521326.jpg', 'x', 'x', 0, 1),
(34, 1, 'Pate Gan Thịt Heo Cho Chó ', 'Viet nam', 'Mới', 'Bột đậu, lúa mạch, mỡ gà, bắp, bột gluten bắp, gluten lúa mì, bột củ cải đường khô, hương vị tự nhiên,', 'Pháp', '4', '5', '5', 78000, 'images (3).jpg', 'images (3).jpg', 'images (3).jpg', 'x', 'x', 0, 0),
(35, 3, 'Áo Mùa Hè Teddy Mỏ Vịt Cho Chó Mèo', 'Pháp', 'Mới', 'vải', 'Pháp', '5', '5', '5', 78900, 'quan-ao-cho-cho-ma-qacc3.jpg', 'quan-ao-cho-cho-ma-qacc3.jpg', 'quan-ao-cho-cho-ma-qacc3.jpg', 'f', 'f', 0, 0),
(36, 9, 'Máy Sấy Lông Chó Mèo', 'Viet nam', 'Mới', 'g', 'Pháp', '5', '5', '5', 89000, 'may-say-long-cho-meo-chunzhou-c4.jpg', 'may-say-long-cho-meo-chunzhou-c4.jpg', 'may-say-long-cho-meo-chunzhou-c4.jpg', 'ew', 'sd', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `anh` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `ten`, `link`, `anh`, `mota`) VALUES
(1, 'Thức ăn thú cưng', 'detail.php?id=3', 'image1-12.jpg', 'Hạt mềm cho Chó Feli Cucina Grain Free cao cấp không tinh bột thành phần Thịt Bò, Thịt Vịt & Cá hồi chó kén ăn'),
(8, ' Cat Cod Sausage', 'detail.php?id=12', 'sdssss.jpg', ' Cat Cod Sausage là một loại thức ăn bổ sung tươi ngon và tự nhiên cho mèo '),
(9, 'Mô tả Xúc xích cho chó vị phô mai BOWWOW', 'detail.php?id=11', 'ban-buon-do-cho-cho-meo-meo-cun-pet-shop-1a-1.jpg', 'Cheese Sausage bổ dưỡng được yêu thích. Đây là thực phẩm bổ sung giúp việc huấn luyện thú cưng dễ dàng và hiệu quả hơn. Kết cấu mềm mại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(55) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `anh` text NOT NULL,
  `sdt` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `anh`, `sdt`, `diachi`, `phanquyen`, `status`) VALUES
(1, 'nguyenvana@gmail.com', 'nguyenvana', 'Nguyễn Văn A', '', '0983428914', 'Khu tái định cư Thôn Lạc Thịnh, Hợp Thịnh, Tam Dương, Vĩnh Phúc', 0, 0),
(5, 'admin', 'admin', 'Codedoan.com', 'comment_3.png', '0977142274', 'Chung cư Tân Việt, Đức Thượng, Hoài Đức, Hà Nội', 1, 0),
(13, 'levanb@gmail.com', 'levanb', 'Lê Văn B', 'comment_3.png', '0987346849', 'Chung cư Tân Tây Đô, xã Tân Lập, huyện Đan Phượng, TP. Hà Nội', 0, 0),
(15, 'doubled@gmail.com', 'doubled', 'DoubleD', 'comment_2.png', '0989994981', 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', 0, 0),
(16, 'phungvanc@gmail.com', 'phungvanc', 'Phùng Văn C', '', '0977146357', 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', 0, 0),
(18, 'kienltk710@gmail.com', 'ltkdt12343', 'Le Kienxxx', '', '0947028450', '', 1, 1),
(19, 'nnn@gmail.com', 'nnn', 'nnn', '', '0987654321', '', 0, 1),
(20, 'demoweb@gmail.com', 'demoweb1', 'demoweb', '638176054475714902_acer-aspire-a315-59-321n-i3-1215u-bac-dd.jpg', '0987654321', '', 0, 1),
(21, 'democode@gmail.com', 'democode1', 'democodexx', 'ban.jpg', '0987654321', 'hcm q99', 1, 0),
(22, 'Demno1@gmail.com', 'Demno1', 'Demno1', 'mac-banner.jpg', '0987654321', 'hcm', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tlbinhluan`
--

CREATE TABLE `tlbinhluan` (
  `id` int(11) NOT NULL,
  `id_binhluan` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tlbinhluan`
--

INSERT INTO `tlbinhluan` (`id`, `id_binhluan`, `noidung`) VALUES
(13, 19, 'Cảm ơn bạn đã bình luận về sản phẩm ạ. Chúc bạn một ngày tốt lành');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id sản phẩm` (`id_sanpham`),
  ADD KEY `id tài khoản` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_donhang` (`id_donhang`),
  ADD KEY `Fk_id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_takhoan` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id danh mục` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id bình luận` (`id_binhluan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_id_sanpham_bl` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_id_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `Fk_id_donhang` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_id_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `id danh mục` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_dm`);

--
-- Các ràng buộc cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD CONSTRAINT `id bình luận` FOREIGN KEY (`id_binhluan`) REFERENCES `binhluan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

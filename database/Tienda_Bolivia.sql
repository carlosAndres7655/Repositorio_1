
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------



CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Ropa en General');

-- --------------------------------------------------------


CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(3, 1, '0', 4, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(4, 2, '0', 4, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000),
(6, 17, '0', 5, 'Ropa formal', 'gents-formal-250x250.jpg', 1, 1000, 1000);

-- --------------------------------------------------------



CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electrónica\r\n'),
(2, 'Ropa Mujeres'),
(3, 'Ropa para hombres\r\n'),
(4, 'Ropa de niños\r\n'),
(5, 'Muebles\r\n'),
(6, 'Electrodomésticos\r\n'),
(7, 'Gadgets electrónicos\r\n');

-- --------------------------------------------------------


CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Dous 2', 5000, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'samsung mobile electronics'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(3, 1, 3, 'iPad', 30000, 'ipad apple ', 'ipad.jpg', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile'),
(5, 1, 2, 'iPad 2', 10000, 'ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 1, 1, 'Hp Laptop serie r', 35000, 'Hp Rojo y negro ', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Celular Sony', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 2, 6, 'Ropa para mujer conjunto rojo', 1000, 'Rojo conjuntos para mujer', 'red dress.jpg', 'red dress '),
(11, 2, 6, 'Ropa casual azul', 1200, 'Camisas azules', 'images.jpg', 'blue dress cloths'),
(12, 2, 6, 'Vestidos formales', 1500, 'Vestidos formales para damas', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'Vestido formal', 1200, 'ropa para mujer', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress'),
(14, 2, 6, 'Conjunto Casual', 1400, 'ropa casual para mujer', 'download.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Vestido formal', 1500, 'Ropa formal', 'shutterstock_203611819.jpg', 'ladies wears dress girl'),
(16, 3, 6, 'Chaqueta para hombre', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter'),
(17, 3, 6, 'Ropa formal', 1000, 'Ropa formal por mayor', 'gents-formal-250x250.jpg', 'gents wear cloths'),
(19, 3, 6, 'Ropa formal', 3000, 'Ropa formal', 'images (1).jpg', 'coat blazer gents'),
(20, 3, 6, 'Chaqueta para hombres', 1600, 'Chaquetas', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents '),
(21, 3, 6, 'Polera Gucci', 800, 'Polera originales Gucci', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black'),
(22, 4, 6, 'Camisa amarilla ', 1300, 'Camisa amarilla', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Ropa para mujer', 1900, 'Ropa para damas', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Camisa azul', 700, 'camisas', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Ropa para damas amarillo', 750, 'Ropa por mayor y menor', 'images (3).jpg', 'yellow kids dress'),
(26, 4, 6, 'Ropa azul', 650, 'Ropa por mayor y menor', 'kids-wear-121.jpg', 'skyblue kids dress'),
(27, 4, 6, 'Ropa formal', 690, 'Ropa formal', 'image28.jpg', 'formal kids dress'),
(32, 5, 0, 'Polera azul', 2500, 'Polera azul', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerador', 35000, 'Refrigerador', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Linternas', 1000, 'Linternas', 'emergency light.JPG', 'emergency light'),
(35, 6, 0, 'Polera Azul', 6000, 'Polera Azul', 'images (2).jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Plancha', 1500, 'PLanchas', 'iron.JPG', 'iron'),
(37, 6, 5, 'Television Lg', 20000, 'Tv', 'images (4).jpg', 'led tv lg'),
(38, 6, 4, 'Microondas', 3500, 'Microondas', 'images.jpg', 'Microwave Oven'),
(39, 6, 5, 'Licuadora', 2500, 'Licuadora multiuso', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Ropa formal para damas', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo');

-- --------------------------------------------------------



CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'demo', 'demo', 'txgarrix@gmail.com', '1234567890', '78820142', 'Garita de Lima', 'La paz'),


ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);


ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;


ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;



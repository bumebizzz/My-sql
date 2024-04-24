-- สร้าง DB ชื่อ bume_want_to_buy
CREATE SCHEMA 'bume_want_to_buy'



-- สร้างตาราง Product
CREATE TABLE `bume_want_to_buy`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `Price` INT NOT NULL,
  `is_necessary` TINYINT NOT NULL,
  `Created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

--เพิ่มข้อมูล  Product ลงในตาราง
INSERT INTO `bume_want_to_buy`.`products` (`title`, `Price`, `is_necessary`) VALUES ('การ์ดจอ', '14000', '0');
INSERT INTO `bume_want_to_buy`.`products` (`title`, `Price`, `is_necessary`) VALUES ('ยางรถยนต์', '12000', '1');
INSERT INTO `bume_want_to_buy`.`products` (`title`, `Price`, `is_necessary`) VALUES ('หูฟัง', '4500', '0');

-- แสดงข้อมูลทั้งหมดในตาราง Products
SELECT * FROM Products;

-- แสดงข้อมูล Field : title กับ Price ทั้งหมดในตาราง Products
SELECT title,Price FROM Products;

-- แสดงข้อมูลของสินค้าที่มีราคามากกว่า 10,000.00 บาท
SELECT * FROM Products
WHERE Price >= 10000 ;

-- แสดงข้อมูลของสินค้าที่มีราคาอยู่ระหว่าง 3,000.00 - 12,000.00 บาท
SELECT * FROM Products
WHERE Price >= 3000 and price <= 12000 ;

-- แสดงข้อมูลของสินค้าที่จำเป็นต้องซื้อ หรือราคาไม่เกิน  5,000.00 บาท
SELECT * FROM Products
WHERE is_necessary = 1 or Price <= 5000;

-- แสดงข้อมูลสินค้าที่สินค้ามีคำว่า " รถ "
SELECT * FROM Products
WHERE title LIKE '%รถ%';

-- แสดงข้อมูลสินค้าทั้งหมด โดยเรียงตามชื่อสินค้า ก ไป ฮ
SELECT * FROM Products
ORDER BY title ASC ;

-- แสดงข้อมูลสินค้าทั้งหมด โดยเรียงข้อมูล id จากมาก ไป น้อย
SELECT * FROM Products
ORDER BY id DESC ;

-- แสดงข้อมูลสินค้าทั้งหมด โดยเรียงข้อมูล id จากมาก ไป น้อย และแสดงแค่ 2 แถวแรก
SELECT * FROM Products
ORDER BY id DESC 
LIMIT 2 ;

-- แสดงข้อมูลสินค้าทั้งหมด โดยเรียงข้อมูล id จากมาก ไป น้อย และแสดงแค่ 2 แถวแรกโดยนำข้อมูลแถวที่ 2 ถึง 3 ออกมา
SELECT * FROM Products
ORDER BY id DESC 
LIMIT 2 OFFSET 1;



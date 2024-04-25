-- เปลี่ยนชื่อ Colum จาก is_necessary ไปเป็น is_ncs --
SELECT title , is_necessary As is_ncs
FROM Products;

-- GROUP BY เป็นคำสั่งไว้ใช้จัดกลุ่ม --
-- Ex1.ใช้คำสั่ง GROUP BY จัดกลุ่มสินค้าตามความจำเป็นต้องซื้อ และนับจำนวนสินค้าในแต่ละกลุ่ม
SELECT is_necessary, COUNT(id) AS products_count
FROM productS
GROUP BY is_necessary;


-- Ex2.ใช้คำสั่ง GROUP BY จัดกลุ่มสินค้าตามความจำเป็นต้องซื้อ และรวมราคาสินค้าในแต่ละกลุ่ม 
SELECT is_necessary, SUM(price) AS products_prices
FROM productS
GROUP BY is_necessary;

-- Ex3.ใช้คำสั่ง GROUP BY จัดกลุ่มสินค้าตามความจำเป็นต้องซื้อ และแสดงรายชื่อสินค้าทั้งหมดแบบเรียงต่อกันในแต่ละกลุ่ม
SELECT is_necessary, GROUP_CONCAT(title SEPARATOR ' + ') AS products_titles
FROM productS
GROUP BY is_necessary;









-- ลบข้อมูลสินค้า ในตาราง Product
-- ลบ "เผือกทอด"
DELETE FROM products
WHERE id = 6;

-- ลบข้อมูลสินค้าในตาราง Product ที่ราคาต่ำกว่า 1,000.00 บาท
DELETE FROM products
WHERE price < 1000;

-- ลบข้อมูลสินค้า

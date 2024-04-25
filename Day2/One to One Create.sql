-- สร้างตาราง One to One ของ Product
CREATE TABLE `bume_want_to_buy`.`product_notes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `note` TEXT NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_notes_products_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_notes_products`
    FOREIGN KEY (`product_id`)
    REFERENCES `bume_want_to_buy`.`products` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- โจทย์ One to One : เพิ่มสินค้าซีพียู ราคา 7000 บาท และใส่โน๊ตไปด้วยว่า "ต้องซื้อเมนบอร์ดใหม่"
-- Step 1 เพิ่มสินค้า ซีพียู ราคา 7000 บาท ไม่จำเป็นต้องซื้อ ใน Table products
INSERT INTO `bume_want_to_buy`.`productS` (`title`, `Price`, `is_necessary`) VALUES ('ซีพียู', '7000', '0');
-- Step 2 เพิ่ม ข้อมูลว่า "ต้องซื้อเมนบอร์ดใหม่" ใน Table product_notes
INSERT INTO `bume_want_to_buy`.`product_notes` (`note`, `product_id`) VALUES ('ต้องซื้อเมนบอร์ดใหม่', '8');

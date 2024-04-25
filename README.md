# My sql 
## SQL คืออะไร?

SQL (Structured Query Language) คือ ภาษาโปรแกรมมิ่งที่ใช้ติดต่อสื่อสารและจัดการกับข้อมูลแบบเชิงสัมพันธ์ (Relational Database) สำหรับ DBMS (Database Management System) ที่เรารู้จักกันดี เช่น MySQL, PostgreSQL, Oracle, MS Server SQL, SQLite เป็นต้น ถึงแม้ว่าแต่ละ DBMS จะมีโครงสร้างหรือฟีเจอร์แตกต่างกันบางส่วน แต่ไวยากรณ์โดยทั่วไปแล้วจะมีความคล้ายคลึงกัน  

## ทำไม SQL สำคัญ?
SQL ถูกใช้ในแอปพลิเคชันต่าง ๆ มากมายเช่น งานด้านการพัฒนาเว็บ การวิเคราะห์ข้อมูล เป็นต้น โดยภาษา SQL นั้นไม่ใช่ภาษาโปรแกรมมิ่งโดยทั่วไปเฉกเช่นภาษาอย่าง Python, Java, JavaScript, etc แต่เป็นภาษาสำหรับจัดการฐานข้อมูลเชิงสัมพันธ์โดยเฉพาะ

## ตัวอย่างไวยากรณ์ (Syntax) ของ SQL  
ด้านล่างคือตัวอย่างไวยากรณ์ของภาษา SQL  
SELECT * FROM Students;  
การทำงานของคำสั่งด้านบนคือให้ทำการดึงข้อมูล (Query) ทุกสิ่งอย่างที่ถูกบันทึกอยู่ในตาราง Students        มาแสดงผลด้วยคำสั่ง  SELECT *  


## ตัวอย่างคำสั่งในเบื้องต้นที่ถูกใช้บ่อยใน SQL
| คำสั่ง | คำอธิบาย |   
| ---- | ---- | ---- |  
| CREATE | สร้างตารางขึ้นมาใหม่ |  
| ALTER | เปลี่ยนแปลงข้อมูลในตาราง เช่น เปลี่ยนชื่อฟีลด์ (คอลัมน์) เป็นต้น |  
| DROP | ลบตาราง |  
| SELECT | เลือกดึงข้อมูลจากตารางที่ต้องการ |  
| INSERT | บันทึกข้อมูลเข้าไปใน record (แถว) ตาราง |  
| UPDATE | แก้ไขหรืออัปเดตข้อมูลใน record |    
| DELETE | ลบข้อมูลใน record |    

# คำสั่ง SQL Insert  
Insert คือ คำสั่งที่ใช้สำหรับ "เพิ่ม" ข้อมูลในแถวใหม่ของตาราง นี่คือตัวอย่างไวยากรณ์ของคำสั่ง 
## โดยจะใช้คีย์เวิร์ด  INSERT  
| INSERT INTO table_name (column1, column2)
VALUES (value1, value2); |       






















## เนื่องจากเจอปัญหา Error  " ไม่สามารถเขียนเงื่อนไขการ Update ได้ "
#### Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

วิธีการแก้ปัญหาคือ 
1. ตั้งค่าการ Safe Update โดยไปที่  
Edit > Preferences > SQL Editor > Scoll down มาล่างสุด > นำเครื่องหมายติ๊กถูกหน้า  Safe Update (rejects UPDATEs and DELETE with no restrictions) ออก > Click " OK "

2. ต้องทำการ Start / Stop Service ของ MySQL80  
Search (ข้างปุ่ม Start) ค้นหาคำว่า "Service"  > MySQL80 >   
Stop service > Start service

3. MySQL Workbench > tab Administration > Service Status > Click ปุ่ม ReFresh  > สามารถ Update ได้ตามปกติ  

คลิปวีดีโอแก้ Error Code:1175 https://www.youtube.com/watch?v=qhwYOgZfqCg&t=318s
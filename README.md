# My sql 
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
INSERT INTO users SET  user_id = "0", user_name = "Вася", user_email = "vas@gmail.com", user_password = "123456789", user_registr_data = "01.01.2000", user_image = "C:\Users\user\Desktop", user_contact = "89999999999";
INSERT INTO users SET  user_id = "1", user_name = "Петя", user_email = "pet@gmail.com", user_password = "123456789", user_registr_data = "01.01.2000", user_image = "C:\Users\user\Desktop", user_contact = "89999999999";


INSERT INTO bids SET bid_id ="0", user_id = "", lot_id = "0", bid_date = "2000.01.01 00:00:00", bid_price = "500";
INSERT INTO bids SET bid_id ="1", user_id = "", lot_id = "1", bid_date = "2000.01.01 00:00:00", bid_price = "600";


INSERT INTO categories SET  categ_id = "boards and skis", categ_name = "доски и лыжи";
INSERT INTO categories SET  categ_id = "Fasteners", categ_name = "Крепления";
INSERT INTO categories SET  categ_id = "boots", categ_name = "Ботинки";
INSERT INTO categories SET  categ_id = "fasteners", categ_name = "Одежда";
INSERT INTO categories SET  categ_id = "Tools", categ_name = "Инструменты";
INSERT INTO categories SET  categ_id = "different", categ_name = "Разное";


INSERT INTO lots SET lot_id = "0", lot_user_id = "", lot_winner_id = "", lot_name = "Сноуборд", lot_cated_id = "", lot_discr = "", lot_image = "C:\Users\user\Desktop", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_stert_prise = "500", lot_step = "900";
INSERT INTO lots SET lot_id = "1", lot_user_id = "", lot_winner_id = "", lot_name = "Лыжи", lot_cated_id = "", lot_discr = "", lot_image = "C:\Users\user\Desktop", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_stert_prise = "600", lot_step = "1000";

SELECT categ_name FROM `categories`;
SELECT * FROM `lots` WHERE lot_comp_date is NULL;
SELECT lot_id, lot_cated_id, lot_user_id, lot_winner_id, lot_name, lot_discr, lot_cr_date, lot_image, lot_stert_prise, lot_comp_date, lot_step, categ_name FROM `lots`, `categories` WHERE lot_id = '4' AND categ_id = '2';
UPDATE `lots` SET lot_name = '2014 Rossignol District Snowboard Black Edition' WHERE lot_id = 2;
SELECT * FROM `bids` WHERE bid_id = '2' AND DATEDIFF(CURDATE(), bid_date) = 0;


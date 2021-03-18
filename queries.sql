INSERT INTO users SET  user_id = "1", user_name = "Вася", user_email = "vas@gmail.com", user_password = "123456789", user_registr_data = "01.01.2000", user_image = "C:\Users\user\Desktop", user_contact = "89999999999";
INSERT INTO users SET  user_id = "2", user_name = "Петя", user_email = "pet@gmail.com", user_password = "123456789", user_registr_data = "01.01.2000", user_image = "C:\Users\user\Desktop", user_contact = "89999999999";


INSERT INTO bids SET bid_id ="1", user_id = "1", lot_id = "1", bid_date = "2000.01.01 00:00:00", bid_price = "500";
INSERT INTO bids SET bid_id ="2", user_id = "2", lot_id = "2", bid_date = "2000.01.01 00:00:00", bid_price = "600";


INSERT INTO categories SET  categ_id = "boards and skis", categ_name = "доски и лыжи";
INSERT INTO categories SET  categ_id = "Fasteners", categ_name = "Крепления";
INSERT INTO categories SET  categ_id = "boots", categ_name = "Ботинки";
INSERT INTO categories SET  categ_id = "fasteners", categ_name = "Одежда";
INSERT INTO categories SET  categ_id = "Tools", categ_name = "Инструменты";
INSERT INTO categories SET  categ_id = "different", categ_name = "Разное";


INSERT INTO lots SET lot_id = "1", lot_name = "2014 Rossignol District Snowboard", lot_discr = "текст номер 1", lot_image = "img/lot-1.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "10999";
INSERT INTO lots SET lot_id = "2", lot_name = "DC Ply Mens 2016/2017 Snowboard", lot_discr = "текст номер 2", lot_image = "img/lot-2.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "159999";
INSERT INTO lots SET lot_id = "3", lot_name = "Крепления Union Contact Pro 2015 года размер L/XL", lot_discr = "текст номер 3", lot_image = "img/lot-3.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "8000";
INSERT INTO lots SET lot_id = "4", lot_name = "Ботинки для сноуборда DC Mutiny Charocal",  lot_discr = "текст номер 4", lot_image = "img/lot-4.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "10999";
INSERT INTO lots SET lot_id = "5", lot_name = "Куртка для сноуборда DC Mutiny Charocal", lot_discr = "текст номер 5", lot_image = "img/lot-5.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "7500";
INSERT INTO lots SET lot_id = "6", lot_name = "Маска Oakley Canopy", lot_discr = "текст номер 6", lot_image = "img/lot-6.jpg", lot_cr_date = "2000.01.01 00:00:00", lot_comp_date = "2000.01.02 00:00:00", lot_start_prise = "5400";

SELECT categ_name FROM `categories`;
SELECT * FROM `lots` WHERE lot_comp_date is NULL;
SELECT lot_id, lot_cated_id, lot_user_id, lot_winner_id, lot_name, lot_discr, lot_cr_date, lot_image, lot_start_prise, lot_comp_date, lot_step, categ_name FROM `lots`, `categories` WHERE lot_id = '4' AND categ_id = '2';
UPDATE `lots` SET lot_name = '2014 Rossignol District Snowboard Black Edition' WHERE lot_id = 2;
SELECT * FROM `bids` WHERE bid_id = '2' AND DATEDIFF(CURDATE(), bid_date) = 0;


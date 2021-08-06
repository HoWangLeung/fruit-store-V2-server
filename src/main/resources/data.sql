

--INSERT INTO users(email,enabled,password,username) VALUES('hkz88i00123@gmail.com',1,'$2a$10$ideoxDhZo1MP9eW.A4UC0.4iPeDeCNM9yVMGQFpzTz04OZp9nxw5S','Derek');

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
--INSERT INTO user_roles(user_id,role_id)VALUES(1,1);

INSERT INTO products(img,price) VALUES ('/static/media/peach_1.6a8d8dfd.jpeg',800);
INSERT INTO products(img,price) VALUES ('/static/media/persimmon_1.5edd8a44.jpeg',65);
INSERT INTO products(img,price) VALUES ('/static/media/mandarin_1.e041c4b7.jpeg',250);
INSERT INTO products(img,price) VALUES ('/static/media/grape_1.28df8847.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/avocado_1.309f9ec5.jpeg',100);
INSERT INTO products(img,price) VALUES ('/static/media/peach_2.7ed4b8c5.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/orange_1.8dd1c1d2.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/grape_2.14a4f239.jpeg',300);
INSERT INTO products(img,price) VALUES ('/static/media/melon_1.bbfcc82c.jpeg',300);
INSERT INTO products(img,price) VALUES ('/static/media/melon_2.5b86e6f7.jpeg',230);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
 
SET foreign_key_checks = 0;

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'en','Peach','Japan','Yamanashi Premium Peach',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'zh','桃','日本','一宮桃-黑盒',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'en','Persimmon','New Zeland','New Zeland persimmon',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'zh','柿','紐西蘭','紐西蘭柿 (一箱 15裝)',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (25,'en','Mandarin','Japan','Karatsu mandarin',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (25,'zh','柑','日本','唐津柑',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (35,'en','Grapes','Japan','Kyoho grapes Jelly',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (35,'zh','提子','日本','日本巨峰波波提',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (45,'en','avocado','Australia','Australia avocado',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (45,'zh','牛油果','澳洲','澳洲牛油果4個',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (55,'en','Peach','United States','America Donut Peach',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (55,'zh','桃','美國','美國扁桃',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (65,'en','Orange','United States','PureSpect Orange',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (65,'zh','橙','美國','美國黑牌橙',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (75,'en','Grapes','Japan','Shine Muscat',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (75,'zh','提子','日本','晴王',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (85,'en','Melon','Japan','Shizuoka Melon',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (85,'zh','密瓜','日本','靜岡密瓜',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (95,'en','Melon','Japan','The Yubari King',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (95,'zh','密瓜','日本','北海道夕張瓜',NULL);

--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (105,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (105,'zh','提子','日本','富士蘋果3',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (115,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (115,'zh','提子','英國','富士蘋果4',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (125,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (125,'zh','蘋果','日本','富士蘋果5',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (135,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (135,'zh','蘋果','美國','富士蘋果6',NULL);
-- 
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (145,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (145,'zh','蘋果','英國','富士蘋果7',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (155,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (155,'zh','蘋果','美國','富士蘋果8',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (165,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (165,'zh','蘋果','日本','富士蘋果9',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (175,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (175,'zh','蘋果','美國','富士蘋果10',NULL);
SET foreign_key_checks = 1;

------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------

--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'en','Peach','Japan','Yamanashi Premium Peach',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'zh','桃','日本','一宮桃-黑盒',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'en','Persimmon','New Zeland','New Zeland persimmon',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'zh','柿','紐西蘭','紐西蘭柿 (一箱 15裝)',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'en','Mandarin','Japan','Karatsu mandarin',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'zh','柑','日本','唐津柑',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'en','Grapes','Japan','Kyoho grapes Jelly',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'zh','提子','日本','日本巨峰波波提',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'en','avocado','Australia','Australia avocado',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'zh','牛油果','澳洲','澳洲牛油果4個',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'en','Peach','United States','America Donut Peach',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'zh','桃','美國','美國扁桃',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'en','Orange','United States','PureSpect Orange',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'zh','橙','美國','美國黑牌橙',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'en','Grapes','Japan','Shine Muscat',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'zh','提子','日本','晴王',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'en','Melon','Japan','Shizuoka Melon',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'zh','密瓜','日本','靜岡密瓜',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'en','Melon','Japan','The Yubari King',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'zh','密瓜','日本','北海道夕張瓜',NULL);

--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (11,'en','Grapes','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (11,'zh','提子','日本','富士蘋果3',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (12,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (12,'zh','提子','英國','富士蘋果4',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (13,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (13,'zh','蘋果','日本','富士蘋果5',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (14,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (14,'zh','蘋果','美國','富士蘋果6',NULL);
-- 
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'zh','蘋果','英國','富士蘋果7',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (16,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (16,'zh','蘋果','美國','富士蘋果8',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (17,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (17,'zh','蘋果','日本','富士蘋果9',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (18,'en','persimmon','New Zeland','New Zeland permission',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (18,'zh','蘋果','美國','富士蘋果10',NULL);



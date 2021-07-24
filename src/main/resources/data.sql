--INSERT INTO users(email,enabled,password,username) VALUES('hkz88i00123@gmail.com',1,'$2a$10$ideoxDhZo1MP9eW.A4UC0.4iPeDeCNM9yVMGQFpzTz04OZp9nxw5S','Derek');

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
--INSERT INTO user_roles(user_id,role_id)VALUES(1,1);

INSERT INTO products(img,price) VALUES ('/static/media/peach_1.6a8d8dfd.jpeg',800);
INSERT INTO products(img,price) VALUES ('/static/media/persimmon_1.5edd8a44.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/grape_1.28df8847.jpeg',65);
INSERT INTO products(img,price) VALUES ('/static/media/avocado_1.309f9ec5.jpeg',100);
INSERT INTO products(img,price) VALUES ('/static/media/peach_2.7ed4b8c5.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/orange_1.8dd1c1d2.jpeg',30);
INSERT INTO products(img,price) VALUES ('/static/media/grape_2.14a4f239.jpeg',300);
INSERT INTO products(img,price) VALUES ('/static/media/melon_1.bbfcc82c.jpeg',300);
INSERT INTO products(img,price) VALUES ('/static/media/melon_2.5b86e6f7.jpeg',230);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
SET FOREIGN_KEY_CHECKS=0
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'en','Mandarin','Japan','Karatsu mandarin',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'zh','柑','日本','唐津柑',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'en','Grape','Japan','Bubble grape',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'zh','提子','日本','日本巨峰波波提',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'zh','柿','紐西蘭','紐西蘭柿 (一箱 15裝)',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'zh','牛油果','澳洲','澳洲牛油果4個',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'zh','桃','美國','美國扁桃',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'zh','橙','美國','美國黑牌橙',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'zh','提子','日本','晴王',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'zh','密瓜','日本','靜岡密瓜',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'zh','密瓜','日本','北海道夕張瓜',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'zh','提子','日本','富士蘋果3',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (11,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (11,'zh','提子','英國','富士蘋果4',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (12,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (12,'zh','蘋果','日本','富士蘋果5',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (13,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (13,'zh','蘋果','美國','富士蘋果6',NULL);
 
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (14,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (14,'zh','蘋果','英國','富士蘋果7',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (15,'zh','蘋果','美國','富士蘋果8',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (16,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (16,'zh','蘋果','日本','富士蘋果9',NULL);

INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (17,'en','persimmon','New Zeland','New Zeland permission',NULL);
INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (17,'zh','蘋果','美國','富士蘋果10',NULL);
SET FOREIGN_KEY_CHECKS=1


--INSERT INTO products(category,country,name,img,price,unit) VALUES ('柑','日本','唐津柑','/static/media/mandarin_1.e041c4b7.jpeg',250,'盒');
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('提子','日本','日本巨峰波波提','/static/media/grape_1.28df8847.jpeg',65,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('牛油果','澳洲','澳洲牛油果4個','/static/media/avocado_1.309f9ec5.jpeg',100,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('桃','美國','美國扁桃','/static/media/peach_2.7ed4b8c5.jpeg',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('橙','美國','美國黑牌橙','/static/media/orange_1.8dd1c1d2.jpeg',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('提子','日本','晴王','/static/media/grape_2.14a4f239.jpeg',300,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('密瓜','日本','靜岡密瓜','/static/media/melon_1.bbfcc82c.jpeg',300,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('密瓜','日本','北海道夕張瓜','/static/media/melon_2.5b86e6f7.jpeg',230,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('提子','日本','富士蘋果3','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('提子','英國','富士蘋果4','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','日本','富士蘋果5','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','美國','富士蘋果6','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','英國','富士蘋果7','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','美國','富士蘋果8','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','日本','富士蘋果9','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);
--INSERT INTO products(category,country,name,img,price,unit) VALUES ('蘋果','美國','富士蘋果10','https://images.unsplash.com/photo-1591735179859-a049994205de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',30,NULL);



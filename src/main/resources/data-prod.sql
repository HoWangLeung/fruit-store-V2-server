

INSERT INTO users(email,enabled,password,username,provider) VALUES('test@test.com',1,'$2a$10$ideoxDhZo1MP9eW.A4UC0.4iPeDeCNM9yVMGQFpzTz04OZp9nxw5S','Derek','local');

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
INSERT INTO user_roles(user_id,role_id)VALUES(5,5);

INSERT INTO products(img,price) VALUES ('peach_1.jpeg',800);
INSERT INTO products(img,price) VALUES ('persimmon_1.jpeg',65);
INSERT INTO products(img,price) VALUES ('mandarin_1.jpeg',250);
INSERT INTO products(img,price) VALUES ('grape_1.jpeg',30);
INSERT INTO products(img,price) VALUES ('avocado_1.jpeg',100);
INSERT INTO products(img,price) VALUES ('peach_2.jpeg',30);
INSERT INTO products(img,price) VALUES ('orange_1.jpeg',30);
INSERT INTO products(img,price) VALUES ('grape_2.jpeg',300);
INSERT INTO products(img,price) VALUES ('melon_1.jpeg',300);
INSERT INTO products(img,price) VALUES ('melon_2.jpeg',230);
INSERT INTO products(img,price) VALUES ('apple_1.jpeg',230);
INSERT INTO products(img,price) VALUES ('apple_2.jpeg',130);
INSERT INTO products(img,price) VALUES ('apple_3.jpeg',130);
INSERT INTO products(img,price) VALUES ('apple_4.jpeg',130);
INSERT INTO products(img,price) VALUES ('apple_5.jpeg',130);
INSERT INTO products(img,price) VALUES ('apple_6.jpeg',130);
INSERT INTO products(img,price) VALUES ('avocado_2.jpeg',130);
INSERT INTO products(img,price) VALUES ('avocado_3.jpeg',130);
INSERT INTO products(img,price) VALUES ('avocado_4.jpeg',130);
INSERT INTO products(img,price) VALUES ('grape_3.jpeg',130);
INSERT INTO products(img,price) VALUES ('grape_4.jpeg',130);
INSERT INTO products(img,price) VALUES ('grape_5.jpeg',130);
INSERT INTO products(img,price) VALUES ('orange_2.jpeg',130);
INSERT INTO products(img,price) VALUES ('orange_3.jpeg',130);
INSERT INTO products(img,price) VALUES ('orange_4.jpeg',130);
INSERT INTO products(img,price) VALUES ('mandarin_2.jpeg',130);
INSERT INTO products(img,price) VALUES ('mandarin_3.jpeg',130);
INSERT INTO products(img,price) VALUES ('mandarin_4.jpeg',130);
INSERT INTO products(img,price) VALUES ('melon_3.jpeg',730);
INSERT INTO products(img,price) VALUES ('melon_4.jpeg',630);
INSERT INTO products(img,price) VALUES ('melon_5.jpeg',830);
INSERT INTO products(img,price) VALUES ('grape_6.jpeg',830);
INSERT INTO products(img,price) VALUES ('grape_7.jpeg',830);
INSERT INTO products(img,price) VALUES ('melon_6.jpeg',250);

INSERT INTO products(img,price) VALUES ('avocado_5.jpeg',130);
INSERT INTO products(img,price) VALUES ('avocado_6.jpeg',130);
INSERT INTO products(img,price) VALUES ('mandarin_5.jpeg',130);
INSERT INTO products(img,price) VALUES ('mandarin_6.jpeg',130);
INSERT INTO products(img,price) VALUES ('orange_5.jpeg',150);
INSERT INTO products(img,price) VALUES ('orange_6.jpeg',135);


--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
--INSERT INTO products(img,price) VALUES ('https://i.picsum.photos/id/338/300/300.jpg?hmac=D7ns1CjRcuNBZ6oG9QkSE1XC5pI8viTJ51zlLrmFpQI',30);
 
SET foreign_key_checks = 0;
SET @dummy='Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'en','Peach','JP','Japan','Yamanashi Premium Peach',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'zh','???','JP','??????','?????????-??????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'en','Persimmon','NZ','New Zeland','New Zeland persimmon',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'zh','???','NZ','?????????','???????????? (?????? 15???)',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'en','Mandarin','JP','Japan','Karatsu mandarin',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'zh','???','JP','??????','?????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'en','Grapes','JP','Japan','Kyoho grapes Jelly',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'zh','??????','JP','??????','?????????????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (45,'en','Avocado','AU','Australia','Australia avocado',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (45,'zh','?????????','AU','??????','???????????????4???',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (55,'en','Peach','US','United States','America Donut Peach',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (55,'zh','???','US','??????','????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (65,'en','Orange','US','United States','PureSpect Orange',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (65,'zh','???','US','??????','???????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (75,'en','Grapes','JP','Japan','Shine Muscat',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (75,'zh','??????','JP','??????','??????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (85,'en','Melon','JP','Japan','Shizuoka Melon',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (85,'zh','??????','JP','??????','????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (95,'en','Melon','JP','Japan','The Yubari King',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (95,'zh','??????','JP','??????','??????????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
 
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (105,'en','Apple','JP','Japan','Apple One',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (105,'zh','??????','JP','??????','???????????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
 
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (115,'en','Apple','UK','United Kingdom','Apple Two',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (115,'zh','??????','UK','??????','?????????',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (125,'en','Apple','UK','United Kingdom','Apple Three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (125,'zh','??????','UK','??????','??????3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (135,'en','Apple','UK','United Kingdom','Apple Four',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (135,'zh','??????','UK','??????','??????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (145,'en','Apple','UK','United Kingdom','Apple Five',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (145,'zh','??????','UK','??????','??????5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (155,'en','Apple','AU','Australia','Apple Six',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (155,'zh','??????','AU','??????','??????6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (165,'en','Avocado','AU','Australia','Avocado Two',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (165,'zh','?????????','AU','??????','?????????2',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (175,'en','Avocado','AU','Australia','Avocado Three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (175,'zh','?????????','AU','??????','?????????3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (185,'en','Avocado','AU','Australia','Avocado Four',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (185,'zh','?????????','AU','??????','?????????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (195,'en','Grapes','AU','Australia','Grapes 3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (195,'zh','??????','AU','??????','??????3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (205,'en','Grapes','AU','Australia','Grapes 4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (205,'zh','??????','AU','??????','??????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (215,'en','Grapes','AU','Australia','Grapes 5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (215,'zh','??????','AU','??????','??????5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (225,'en','Orange','US','United States','Orange 2',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (225,'zh','???','US','??????','???2',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (235,'en','Orange','US','United States','Orange 3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (235,'zh','???','US','??????','???3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (245,'en','Orange','US','United States','Orange 4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (245,'zh','???','US','??????','???4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (255,'en','Mandarin','JP','Japan','Karatsu mandarin one',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (255,'zh','???','JP','??????','?????????2',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (265,'en','Mandarin','JP','Japan','Karatsu mandarin two',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (265,'zh','???','JP','??????','?????????3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (275,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (275,'zh','???','JP','??????','?????????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (285,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (285,'zh','??????','JP','??????','??????3',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (295,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (295,'zh','??????','JP','??????','??????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (305,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (305,'zh','??????','JP','??????','??????5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (315,'en','Grapes','US','United States','Grape 6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (315,'zh','??????','US','??????','??????6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (325,'en','Grapes','US','United States','Grape 7',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (325,'zh','??????','US','??????','??????7',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (335,'en','Melon','JP','Japan','Melon 6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (335,'zh','??????','JP','??????','??????6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (345,'en','Avocado','NZ','Australia','Avocado 4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (345,'zh','?????????','NZ','??????','?????????4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (355,'en','Avocado','NZ','New Zeland','Avocado 5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (355,'zh','?????????','NZ','?????????','?????????5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (365,'en','Mandarin','NZ','New Zeland','Mandarin 4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (365,'zh','???','NZ','?????????','???4',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (375,'en','Mandarin','NZ','New Zeland','Mandarin 5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (375,'zh','???','NZ','?????????','???5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (385,'en','Orange','US','United States','Orange 5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (385,'zh','???','US','??????','???5',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (395,'en','Orange','US','United States','Orange 6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (395,'zh','???','US','??????','???6',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');


SET foreign_key_checks = 1;

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------

--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'en','Peach','Japan','Yamanashi Premium Peach',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (1,'zh','???','??????','?????????-??????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'en','Persimmon','New Zeland','New Zeland persimmon',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (2,'zh','???','?????????','???????????? (?????? 15???)',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'en','Mandarin','Japan','Karatsu mandarin',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (3,'zh','???','??????','?????????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'en','Grapes','Japan','Kyoho grapes Jelly',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (4,'zh','??????','??????','?????????????????????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'en','avocado','Australia','Australia avocado',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (5,'zh','?????????','??????','???????????????4???',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'en','Peach','United States','America Donut Peach',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (6,'zh','???','??????','????????????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'en','Orange','United States','PureSpect Orange',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (7,'zh','???','??????','???????????????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'en','Grapes','Japan','Shine Muscat',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (8,'zh','??????','??????','??????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'en','Melon','Japan','Shizuoka Melon',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (9,'zh','??????','??????','????????????',NULL);
--
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'en','Melon','Japan','The Yubari King',NULL);
--INSERT INTO localized_product(id,locale,category,country,name,unit) VALUES (10,'zh','??????','??????','??????????????????',NULL);





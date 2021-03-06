

INSERT INTO users(email,enabled,password,username,provider) VALUES('test@test.com',1,'$2a$10$ideoxDhZo1MP9eW.A4UC0.4iPeDeCNM9yVMGQFpzTz04OZp9nxw5S','Ho Wang','local');

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
INSERT INTO user_roles(user_id,role_id)VALUES(1,3	);

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

Set @dummy='Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (1,'en','Peach','JP','Japan','Yamanashi Premium Peach',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (1,'zh','???','JP','??????','?????????-??????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'en','Persimmon','NZ','New Zeland','New Zeland persimmon',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'zh','???','NZ','?????????','???????????? (?????? 15???)',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'en','Mandarin','JP','Japan','Karatsu mandarin',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'zh','???','JP','??????','?????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'en','Grapes','JP','Japan','Kyoho grapes Jelly',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'zh','??????','JP','??????','?????????????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'en','Avocado','AU','Australia','Australia avocado',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'zh','?????????','AU','??????','???????????????4???',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'en','Peach','US','United States','America Donut Peach',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'zh','???','US','??????','????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'en','Orange','US','United States','PureSpect Orange',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'zh','???','US','??????','???????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'en','Grapes','JP','Japan','Shine Muscat',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'zh','??????','JP','??????','??????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'en','Melon','JP','Japan','Shizuoka Melon',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'zh','??????','JP','??????','????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'en','Melon','JP','Japan','The Yubari King',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'zh','??????','JP','??????','??????????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (11,'en','Apple','JP','Japan','Apple One',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (11,'zh','??????','JP','??????','???????????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (12,'en','Apple','UK','United Kingdom','Apple Two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (12,'zh','??????','UK','??????','?????????',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (13,'en','Apple','UK','United Kingdom','Apple Three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (13,'zh','??????','UK','??????','??????3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (14,'en','Apple','UK','United Kingdom','Apple Four',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (14,'zh','??????','UK','??????','??????4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'en','Apple','UK','United Kingdom','Apple Five',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'zh','??????','UK','??????','??????5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (16,'en','Apple','AU','Australia','Apple Six',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (16,'zh','??????','AU','??????','??????6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (17,'en','Avocado','AU','Australia','Avocado Two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (17,'zh','?????????','AU','??????','?????????2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (18,'en','Avocado','AU','Australia','Avocado Three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (18,'zh','?????????','AU','??????','?????????3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (19,'en','Avocado','AU','Australia','Avocado Four',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (19,'zh','?????????','AU','??????','?????????4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (20,'en','Grapes','AU','Australia','Grapes 3',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (20,'zh','??????','AU','??????','??????3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (21,'en','Grapes','AU','Australia','Grapes 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (21,'zh','??????','AU','??????','??????4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (22,'en','Grapes','AU','Australia','Grapes 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (22,'zh','??????','AU','??????','??????5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (23,'en','Orange','US','United States','Orange 2',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (23,'zh','???','US','??????','???2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (24,'en','Orange','US','United States','Orange 3',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (24,'zh','???','US','??????','???3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'en','Orange','US','United States','Orange 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'zh','???','US','??????','???4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (26,'en','Mandarin','JP','Japan','Karatsu mandarin one',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (26,'zh','???','JP','??????','?????????2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (27,'en','Mandarin','JP','Japan','Karatsu mandarin two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (27,'zh','???','JP','??????','?????????3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (28,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (28,'zh','???','JP','??????','?????????4',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (29,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (29,'zh','??????','JP','??????','??????3',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (30,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (30,'zh','??????','JP','??????','??????4',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (31,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (31,'zh','??????','JP','??????','??????5',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (32,'en','Grapes','US','United States','Grape 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (32,'zh','??????','US','??????','??????6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (33,'en','Grapes','US','United States','Grape 7',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (33,'zh','??????','US','??????','??????7',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (34,'en','Melon','JP','Japan','Melon 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (34,'zh','??????','JP','??????','??????6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'en','Avocado','NZ','Australia','Avocado 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'zh','?????????','NZ','??????','?????????4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (36,'en','Avocado','NZ','New Zeland','Avocado 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (36,'zh','?????????','NZ','?????????','?????????5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (37,'en','Mandarin','NZ','New Zeland','Mandarin 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (37,'zh','???','NZ','?????????','???4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (38,'en','Mandarin','NZ','New Zeland','Mandarin 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (38,'zh','???','NZ','?????????','???5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (39,'en','Orange','US','United States','Orange 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (39,'zh','???','US','??????','???5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (40,'en','Orange','US','United States','Orange 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (40,'zh','???','US','??????','???6',NULL,@dummy);


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
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (1,'zh','桃','JP','日本','一宮桃-黑盒',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'en','Persimmon','NZ','New Zeland','New Zeland persimmon',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'zh','柿','NZ','紐西蘭','紐西蘭柿 (一箱 15裝)',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'en','Mandarin','JP','Japan','Karatsu mandarin',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'zh','柑','JP','日本','唐津柑',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'en','Grapes','JP','Japan','Kyoho grapes Jelly',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'zh','提子','JP','日本','日本巨峰波波提',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'en','Avocado','AU','Australia','Australia avocado',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'zh','牛油果','AU','澳洲','澳洲牛油果4個',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'en','Peach','US','United States','America Donut Peach',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'zh','桃','US','美國','美國扁桃',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'en','Orange','US','United States','PureSpect Orange',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'zh','橙','US','美國','美國黑牌橙',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'en','Grapes','JP','Japan','Shine Muscat',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'zh','提子','JP','日本','晴王',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'en','Melon','JP','Japan','Shizuoka Melon',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'zh','密瓜','JP','日本','靜岡密瓜',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'en','Melon','JP','Japan','The Yubari King',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'zh','密瓜','JP','日本','北海道夕張瓜',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (11,'en','Apple','JP','Japan','Apple One',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (11,'zh','蘋果','JP','日本','北海道蘋果',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (12,'en','Apple','UK','United Kingdom','Apple Two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (12,'zh','蘋果','UK','英國','蘋果二',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (13,'en','Apple','UK','United Kingdom','Apple Three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (13,'zh','蘋果','UK','英國','蘋果3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (14,'en','Apple','UK','United Kingdom','Apple Four',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (14,'zh','蘋果','UK','英國','蘋果4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'en','Apple','UK','United Kingdom','Apple Five',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (15,'zh','蘋果','UK','英國','蘋果5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (16,'en','Apple','AU','Australia','Apple Six',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (16,'zh','蘋果','AU','澳洲','蘋果6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (17,'en','Avocado','AU','Australia','Avocado Two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (17,'zh','牛油果','AU','澳洲','牛油果2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (18,'en','Avocado','AU','Australia','Avocado Three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (18,'zh','牛油果','AU','澳洲','牛油果3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (19,'en','Avocado','AU','Australia','Avocado Four',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (19,'zh','牛油果','AU','澳洲','牛油果4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (20,'en','Grapes','AU','Australia','Grapes 3',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (20,'zh','提子','AU','澳洲','提子3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (21,'en','Grapes','AU','Australia','Grapes 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (21,'zh','提子','AU','澳洲','提子4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (22,'en','Grapes','AU','Australia','Grapes 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (22,'zh','提子','AU','澳洲','提子5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (23,'en','Orange','US','United States','Orange 2',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (23,'zh','橙','US','美國','橙2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (24,'en','Orange','US','United States','Orange 3',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (24,'zh','橙','US','美國','橙3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'en','Orange','US','United States','Orange 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (25,'zh','橙','US','美國','橙4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (26,'en','Mandarin','JP','Japan','Karatsu mandarin one',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (26,'zh','柑','JP','日本','唐津柑2',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (27,'en','Mandarin','JP','Japan','Karatsu mandarin two',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (27,'zh','柑','JP','日本','唐津柑3',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (28,'en','Mandarin','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (28,'zh','柑','JP','日本','唐津柑4',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (29,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (29,'zh','密瓜','JP','日本','密瓜3',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (30,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (30,'zh','密瓜','JP','日本','密瓜4',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (31,'en','Melon','JP','Japan','Karatsu mandarin three',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (31,'zh','密瓜','JP','日本','密瓜5',NULL,@dummy);


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (32,'en','Grapes','US','United States','Grape 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (32,'zh','提子','US','美國','提子6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (33,'en','Grapes','US','United States','Grape 7',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (33,'zh','提子','US','美國','提子7',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (34,'en','Melon','JP','Japan','Melon 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (34,'zh','密瓜','JP','日本','密瓜6',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'en','Avocado','NZ','Australia','Avocado 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (35,'zh','牛油果','NZ','澳洲','牛油果4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (36,'en','Avocado','NZ','New Zeland','Avocado 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (36,'zh','牛油果','NZ','紐西蘭','牛油果5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (37,'en','Mandarin','NZ','New Zeland','Mandarin 4',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (37,'zh','柑','NZ','紐西蘭','柑4',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (38,'en','Mandarin','NZ','New Zeland','Mandarin 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (38,'zh','柑','NZ','紐西蘭','柑5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (39,'en','Orange','US','United States','Orange 5',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (39,'zh','橙','US','美國','橙5',NULL,@dummy);

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (40,'en','Orange','US','United States','Orange 6',NULL,@dummy);
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (40,'zh','橙','US','美國','橙6',NULL,@dummy);
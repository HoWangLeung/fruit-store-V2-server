

INSERT INTO users(email,enabled,password,username,provider) VALUES('test@test.com',1,'$2a$10$ideoxDhZo1MP9eW.A4UC0.4iPeDeCNM9yVMGQFpzTz04OZp9nxw5S','Derek','local');

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
INSERT INTO user_roles(user_id,role_id)VALUES(1,1);

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


INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (1,'en','Peach','JP','Japan','Yamanashi Premium Peach',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (1,'zh','桃','JP','日本','一宮桃-黑盒',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'en','Persimmon','NZ','New Zeland','New Zeland persimmon',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (2,'zh','柿','NZ','紐西蘭','紐西蘭柿 (一箱 15裝)',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'en','Mandarin','JP','Japan','Karatsu mandarin',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (3,'zh','柑','JP','日本','唐津柑',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'en','Grapes','JP','Japan','Kyoho grapes Jelly',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (4,'zh','提子','JP','日本','日本巨峰波波提',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'en','Avocado','AU','Australia','Australia avocado',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (5,'zh','牛油果','AU','澳洲','澳洲牛油果4個',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'en','Peach','US','United States','America Donut Peach',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (6,'zh','桃','US','美國','美國扁桃',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'en','Orange','US','United States','PureSpect Orange',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (7,'zh','橙','US','美國','美國黑牌橙',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'en','Grapes','JP','Japan','Shine Muscat',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (8,'zh','提子','JP','日本','晴王',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'en','Melon','JP','Japan','Shizuoka Melon',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (9,'zh','密瓜','JP','日本','靜岡密瓜',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'en','Melon','JP','Japan','The Yubari King',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO localized_product(id,locale,category,country_code,country,name,unit,description) VALUES (10,'zh','密瓜','JP','日本','北海道夕張瓜',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');





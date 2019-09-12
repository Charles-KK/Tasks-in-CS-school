use yh45_assn2;

CREATE TABLE Order_(
order_id CHAR(10)PRIMARY KEY,
delivery_street VARCHAR(20)NOT NULL,
dilivery_city VARCHAR(20)NOT NULL,
delivery_postcode VARCHAR(10)NOT NULL,
delivery_country VARCHAR(10)NOT NULL,
date_ordered date,
date_delivered date);

INSERT INTO Order_ VALUES  
('1837002857', '77 Roman Rd', 'LEEDS', 'LS1 2DX', 'UK', 20180203, 20180213),
('1837873829', '33 Park Row', 'EDINBURGH', 'EH3 3NS', 'UK', 20130405, 20130415),
('1839402720', '30 Nith Street', 'GLASGOW', 'G1 9FG', 'UK', 20120405, 20120415),
('1822398093', '93 Church Way', 'BRADFORD', 'EX22 8BL', 'UK', 20120203, 20120213),
('1820393587', '60 Park Row', 'EDINBURGH', 'EH3 9HL', 'UK', 20140301, 20140311),
('1898099282', '18 Ploughley Rd', 'TODHILLS', 'DD4 5SS', 'UK', 20150201, 20150212),
('1802898345', '33 Guild Street', 'LONDON', 'EC1A 8YX', 'UK', 20120403, 20140413),
('1820980738', '95 Park Row', 'DUNDEE', 'DD1 2ZT', 'UK', 20130105, 20130114),
('1738466826', '6 Iffley Road', 'BRISTOL', 'BS6 4EG', 'UK', 20150105, 20150111),
('1811279090', '1 Hudson St', 'DUNDEE', 'DD1 4YZ', 'UK', 20160203, 20160204);



CREATE TABLE Customer_(
customer_id CHAR(8)PRIMARY KEY,
name VARCHAR(20)NOT NULL,
email VARCHAR(30)NOT NULL,
street VARCHAR(20)NOT NULL,
city VARCHAR(20)NOT NULL,
postcode VARCHAR(10)NOT NULL,
country VARCHAR(10)NOT NULL);

INSERT INTO Customer_ VALUES  
('18293710', 'Logan Woodward', 'lw46@mail.net', '58 Kendell Street', 'SHELDON', 'EX14 0BW', 'UK'),
('21243453', 'Tyler Oliver', '542600@gene.net', '44 Park End St', 'BROCKTON', 'TF13 9HA', 'UK'),
('38768765', 'Elizabeth O Hunt', '6p0c6k6ihp@iffymedia.com', '1 Hudson St', 'DUNDEE', 'DD1 4YZ', 'UK'),
('48490982', 'Ellie N Hughes', 'enh7@mail.net', '86 Hudson St', 'DUNDEE', 'DD1 8XY', 'UK'),
('53925542', 'Ellis A Pope', 'st897@mail.net', '21 Crown Street', 'LONDON', 'SW1A 3SG', 'UK'),
('62836788', 'Oliver S Townsend', 'l345@mail.net', '35 Guild Street', 'LONDON', 'SE22 1YL', 'UK'),
('78394432', 'Alisha H Arnold', 'jhg6@mail.net', '47 Roman Rd', 'LEEDS', 'LS1 9BR', 'UK'),
('88493028', 'Joel A Davey', 'myfr34@mail.net', '44 Nith Street', 'GLASGOW', 'G1 3GB', 'UK'),
('90383020', 'Isobel F Thomson', 'uhd4@mail.net', '57 West Lane', 'DALHALVAIG', 'KW13 5GS', 'UK'),
('10783923', 'Tia L Matthews', 'sqdson@claimab.com', '19 Park Row', 'EDINBURGH', 'EH6 2YL', 'UK');



CREATE TABLE Book_(
book_id CHAR(5)PRIMARY KEY, 
title VARCHAR(30)NOT NULL,
author VARCHAR(30)NOT NULL, 
publisher VARCHAR(30)NOT NULL
);

INSERT INTO Book_ VALUES  
('59541', 'Pride and Prejudice', 'Jane Austen', 'Solis Press'),
('58448', 'The Da Vinci Code', 'Dan Brown', 'Solis Press'),
('55564', 'The Catcher in the Rye', 'J. D. Salinger ', 'Urban Romantics'),
('53376', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Solis Press'),
('47303', 'Twilight', 'Stephenie Meyer', 'Urban Romantics'),
('45447', 'The Hunger Games', 'Suzanne Collins ', 'Tom media'),
('43592', 'Jane Eyre', 'Charlotte Brontë ', 'Tantor Media'),
('43237', 'The Kite Runner', 'Khaled Hosseini', 'Tom media'),
('42802', 'Animal Farm', 'George Orwell', 'Recorded Books'),
('40352', 'Brave New World', 'Aldous Huxley', 'Recorded Books'),
('39599', 'The Lord of the Rings', 'J. R. R. Tolkien', 'HighBridge Audio'),
('37609', 'Angels & Demons', 'Dan Brown', 'HighBridge Audio'),
('49382', 'This is life', 'Elliot K Kirby', 'RealLifeBooks'),
('12934', '30 Minute Meals', 'Joe Wicks', 'RealLifeBooks'),
('10200','My Favourite Recipes', 'Spencer Carter', 'RealLifeBooks');


CREATE TABLE Supplier_(
supplier_id CHAR(5)PRIMARY KEY, 
name VARCHAR(30)NOT NULL, 
account_no CHAR(16)NOT NULL, 
email CHAR(30)NOT NULL
);

INSERT INTO Supplier_ VALUES  
('68914','Charlotte J Sanders','4532233710293628','rnukj@claimab.com'),
('18293','Luca A Parker','4916291593063555','rnuahct2kj@claimab.com'),
('10283','Scarlett M Sheppard','4716255974219518','6lncmkrs0yb@payspun.com'),
('29381','Charlie S Cole','5126746233058482','wpydmy8ewx@claimab.com'),
('38293','Samuel M McDonald','4556003141517072','nwjfnbb49qq@payspun.com'),
('19203','Niamh R Akhtar','4556366096543660','wt8goba9tar@payspun.com'),
('10293','Muhammad','5597294292322119','a8fzcbp9vcp@iffymedia.com'),
('29374','Corey','5415927718262290','8hu7onk4i9b@claimab.com'),
('38402','Declan','5537906453657412','q8qrhco19ei@claimab.com'),
('39247','Harriet','4485077242461295','sdf@claimab.com');


CREATE TABLE Edition_(
book_id CHAR(5), 
edition VARCHAR(5), 
book_type VARCHAR(15)NOT NULL, 
price NUMERIC(5,2)NOT NULL, 
quantity_in_stock VARCHAR(5)NOT NULL,
PRIMARY KEY(book_id, edition),
FOREIGN KEY(book_id) REFERENCES Book_(book_id));

INSERT INTO Edition_ VALUES  
('59541','6','Hardcover','012.50','100'),
('59541','8','Paperback','010.50','150'),
('59541','2','Audioversion','030.50','50'),
('58448','5','Paperback','011.50','20'),
('55564','3','Hardcover','009.50','100'),
('55564','1','Audioversion','015.50','50'),
('53376','5','Paperback','010.50','60'),
('53376','2','Audioversion','013.50','20'),
('47303','6','Audioversion','034.00','100'),
('45447','4','Paperback','005.50','20'),
('45447','2','Audioversion','010.50','20'),
('45447','5','Hardcover','006.50','100'),
('43592','5','Paperback','004.50','50'),
('43592','2','Audioversion','010.50','20'),
('43592','6','Hardcover','005.50','50'),
('43237','9','Paperback','005.50','20'),
('42802','4','Paperback','005.50','20'),
('40352','5','Hardcover','004.50','100'),
('39599','6','Audioversion','009.50','45'),
('37609','6','Audioversion','034.00','40'),
('49382','3','Hardcover','021.00','40'),
('12934','6','Audioversion','039.00','20'),
('10200','2','Audioversion','082.00','110');


CREATE TABLE Review_(
book_id CHAR(5), 
customer_id CHAR(8), 
rating CHAR(1),
PRIMARY KEY(book_id, customer_id),
FOREIGN KEY(book_id) REFERENCES Book_(book_id),
FOREIGN KEY(customer_id) REFERENCES Customer_(customer_id));

INSERT INTO Review_ VALUES  
('59541','10783923','8'),
('58448','10783923','7'),
('55564','21243453','6'),
('53376','21243453','7'),
('47303','38768765','8'),
('45447','38768765','6'),
('43592','48490982','5'),
('43237','53925542','7'),
('42802','62836788','7'),
('40352','78394432','5'),
('39599','88493028','8'),
('37609','90383020','9'),
('49382','90383020','9'),
('12934','90383020','9'),
('10200','90383020','7');


CREATE TABLE Order_Place_(
order_id CHAR(10), 
customer_id CHAR(8),
PRIMARY KEY(order_id, customer_id),
FOREIGN KEY(order_id) REFERENCES Order_(order_id),
FOREIGN KEY(customer_id) REFERENCES Customer_(customer_id));

INSERT INTO Order_Place_ VALUES  
('1738466826','10783923'),
('1802898345','18293710'),
('1811279090','21243453'),
('1820393587','38768765'),
('1820980738','48490982'),
('1822398093','53925542'),
('1837002857','62836788'),
('1837873829','78394432'),
('1839402720','88493028'),
('1898099282','90383020');



CREATE TABLE  Contain_(
book_id CHAR(5), 
order_id CHAR(10), 
edition VARCHAR(5)NOT NULL,
PRIMARY KEY(order_id, book_id, edition),
FOREIGN KEY(order_id) REFERENCES Order_(order_id),
FOREIGN KEY(book_id) REFERENCES Book_(book_id));

INSERT INTO Contain_ VALUES  
('59541','1738466826','6'),
('58448','1802898345','5'),
('10200','1811279090','2'),
('55564','1820393587','3'),
('53376','1820980738','5'),
('47303','1822398093','6'),
('45447','1837002857','4'),
('43592','1837873829','5'),
('43237','1839402720','9'),
('42802','1898099282','4'),
('40352','1898099282','5'),
('39599','1738466826','6'),
('37609','1738466826','6'),
('49382','1839402720','3'),
('12934','1837873829','6');


CREATE TABLE Supplies_(
supplier_id CHAR(5),
book_id CHAR(5), 
supply_price NUMERIC(5,2)NOT NULL,
PRIMARY KEY(supplier_id, book_id),
FOREIGN KEY(supplier_id) REFERENCES Supplier_(supplier_id),
FOREIGN KEY(book_id) REFERENCES Book_(book_id));

INSERT INTO Supplies_ VALUES  
('10283','59541','003.50'),
('10293','58448','004.50'),
('10283','58448','003.50'),
('18293','10200','005.50'),
('38293','10200','004.50'),
('19203','10200','004.20'),
('19203','55564','003.50'),
('29374','53376','003.50'),
('29381','47303','003.50'),
('38293','45447','002.50'),
('38402','43592','003.50'),
('39247','43237','003.50'),
('68914','42802','004.50'),
('10283','40352','004.50'),
('10293','39599','005.50'),
('18293','37609','004.50'),
('19203','49382','005.50'),
('29374','12934','005.50');


CREATE TABLE Customer_phone_(
customer_id CHAR(8),
customer_phone_number CHAR(13), 
customer_phone_type VARCHAR(20)NOT NULL);
PRIMARY KEY(customer_id, customer_phone_number),
FOREIGN KEY(customer_id) REFERENCES Customer_(customer_id));


INSERT INTO Customer_phone_ VALUES 
('18293710','078 2981 8630','mobilephone'),
('21243453','070 5512 4228','telephone'),
('38768765','077 1322 1591','telephone'),
('48490982','078 7769 7401','telephone'),
('53925542','079 5549 1519','mobilephone'),
('62836788','078 7026 2822','telephone'),
('78394432','079 2059 4666','telephone'),
('88493028','070 8277 5651','mobilephone'),
('90383020','079 1310 5251','mobilephone'),
('10783923','078 2223 3475','mobilephone');


CREATE TABLE Supplier_phone_(
supplier_id CHAR(5), 
supplier_phone_number CHAR(13), 
supplier_phone_type VARCHAR(20)NOT NULL);
PRIMARY KEY(supplier_id, supplier_phone_number),
FOREIGN KEY(supplier_id) REFERENCES Supplier_(supplier_id);

INSERT INTO Supplier_phone_ VALUES
('68914','079 0330 2713','mobilephone'),
('18293','079 5714 9984','mobilephone'),
('10283','070 6951 9975','mobilephone'),
('29381','070 3074 2734','mobilephone'),
('38293','079 4413 8752','mobilephone'),
('19203','077 5711 8796','telephone'),
('10293','070 4285 4957','telephone'),
('29374','078 4443 7359','telephone'),
('38402','077 6137 4167','telephone'),
('39247','070 1106 3157','telephone');


CREATE TABLE Genre_(
book_id CHAR(5)PRIMARY KEY, 
genre VARCHAR(20)NOT NULL);
FOREIGN KEY(book_id) REFERENCES Book_(book_id);

INSERT INTO Genre_ VALUES
('59541','classic'),
('58448','fiction'),
('55564','classic'),
('53376','fiction '),
('47303','fiction'),
('45447','adventure'),
('43592','romance'),
('43237','fiction'),
('42802','politics'),
('40352','fiction'),
('39599','adventure'),
('37609','fiction'),
('49382','Cookery'),
('12934','Cookery'),
('10200','Cookery');

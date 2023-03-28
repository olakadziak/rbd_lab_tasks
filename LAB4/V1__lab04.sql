CREATE DATABASE taxidb;
\c taxidb
\l
CREATE SCHEMA data;
CREATE TABLE data.passenger (
  id serial PRIMARY KEY
);
CREATE TABLE data.passengers_opinion (
  id serial PRIMARY KEY,
  behaviour int,
  timeliness int
);
CREATE TABLE data.drivers_opinion (
  abilities int,
  car_condition int, 
  observance_of_provisions int
);
CREATE TABLE data.user (
  id serial PRIMARY KEY,
  name varchar(255),
  surname varchar(10),
  email varchar(10),
  phone_number varchar(25)
);
CREATE TABLE data.car_type (
  id serial PRIMARY KEY,
  name varchar(255)
);
CREATE TABLE data.car (
  id serial PRIMARY KEY,
  brand varchar(255),
  model varchar(10)
);
CREATE TABLE data.drivers_car (
  id serial PRIMARY KEY,
  licence_number varchar(255),
  color varchar(10)
);
CREATE TABLE data.driver (
  id serial PRIMARY KEY,
  img bytea
);
CREATE TABLE data.ride (
  id serial PRIMARY KEY,
  distance int
);
CREATE TABLE data.payment_type (
  id serial PRIMARY KEY,
  name varchar(255)

);
CREATE TABLE data.payment (
  id serial PRIMARY KEY,
  value money
);
CREATE TABLE data.address (
  id serial PRIMARY KEY,
  street_name varchar(100),
  building_number varchar(25),
  flat_number varchar(25),
  zip_code varchar(25),
  city varchar(25),
  country varchar(25)
);
CREATE TABLE data.area (
  id serial PRIMARY KEY,
  name varchar(255)
);



INSERT INTO 
  data.passengers_opinion (behaviour, timeliness)
VALUES
('5', '5'),
('6', '2'),
('4', '9'), 
('10', '9'),
('8', '6');

INSERT INTO 
  data.drivers_opinion (abilities, car_condition,  observance_of_provisions)
VALUES
('5', '5','8'),
('7', '9','8'),
('1', '1','1'),
('2', '9','8'),
('6', '3','4');

INSERT INTO 
  data.user (name, surname, email, phone_number)
VALUES
('Amelia', 'Kowalska','akowalska@gmail.com', '543678904'),
('Marcin', 'Bednarek','mbednarek@gmail.com', '435786567'),
('Pola', 'Kwiatkowska','pkwiatkowska@gmail.com','908675678'),
('Karol', 'Piotrowski','kpiotrowski@gmail.com', '500678987'),
('Ania', 'Nowak','anowak@gmail.com');

INSERT INTO 
  data.car_type (name)
VALUES
('Standardowy'),
('Przewoz zwierzat'),
('XL'), 
('Retro'),
('Van');

INSERT INTO 
  data.car (brand, model)
VALUES
('Fiat', '500'),
('Renault', 'Koleos'),
('Kia', 'Rio'), 
('Ford', 'Fiesta'),
('Nissan', 'Micra');

INSERT INTO 
  data.car (licence_number, color)
VALUES
('GD12345', 'niebieski'),
('WZ56789', 'czerwony'),
('BS09865', 'szary'), 
('ZS98365', 'czarny'),
('PO64729', 'fioletowy');


INSERT INTO 
  data.ride (distance)
VALUES
('20'),
('12'),
('5'),
('8'),
('60');

INSERT INTO 
  data.payment_type (name)
VALUES
('Gotowka'),
('Karta');


INSERT INTO 
    data.payment (value)
VALUES
('20'),
('12'),
('5'),
('8'),
('60');

INSERT INTO 
  data.address (street_name, building_number, flat_number, zip_code, city, country)
VALUES
  ('Grunwaldzka', '2a', '3', '80-000','Gdansk', 'Poland'),
  ('Norwida', '19', '1c', '81-000', 'Gdynia',  'Poland'),
  ('Koszykowa', '86', '4', '02-008', 'Warszawa','Poland'),
  ('Kolorowa', '1', '2',  '81-220', 'Krakow' 'Poland'),
  ('Dluga', '96', '7', '02-008', 'Warszawa', 'Poland');

INSERT INTO 
  data.area (name)
VALUES
('I strefa'),
('II strefa'),
('III strefa'),
('IV strefa'),
('V strefa');


SELECT * FROM data.passenger;
SELECT * FROM data.passengers_opinion;
SELECT * FROM data.drivers_opinion;
SELECT * FROM data.user;
SELECT * FROM data.car_type;
SELECT * FROM data.car;
SELECT * FROM data.drivers_car;
SELECT * FROM data.driver;
SELECT * FROM data.ride;
SELECT * FROM data.payment_type;
SELECT * FROM data.payment;
SELECT * FROM data.address;
SELECT * FROM data.area;



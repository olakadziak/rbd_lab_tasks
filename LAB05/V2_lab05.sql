/*1*/
TRUNCATE TABLE car_type;

/*2*/
DROP TABLE driver;

CREATE TABLE data.driver (
  id serial PRIMARY KEY,
  img bytea,
  payment_way_id INT NOT NULL
);

/*3*/
ALTER TABLE data.driver
    ADD COLUMN user_id INT NOT NULL;
ALTER TABLE data.driver
  ADD CONSTRAINT id_user_fk
  FOREIGN KEY (user_id) REFERENCES data.driver(id);

/*4*/
/*41*/
ALTER TABLE data.address
  ADD COLUMN area_id INT NOT NULL;

ALTER TABLE data.address
  ADD CONSTRAINT area_id_fk
  FOREIGN KEY (area_id) REFERENCES area(id);
/*42*/
ALTER TABLE data.passenger
  ADD COLUMN user_id INT NOT NULL;

ALTER TABLE data.passenger
  ADD CONSTRAINT user_id_fk
  FOREIGN KEY (user_id) REFERENCES user(id);

    ALTER TABLE data.passenger
ADD COLUMN prefferd_payment_type INT NOT NULL;

ALTER TABLE data.passenger
    ADD CONSTRAINT prefferd_payment_type_fk
  FOREIGN KEY (prefferd_payment_type) REFERENCES payment_type(id);
/*43*/
ALTER TABLE data.passengers_opinion
  ADD COLUMN passenger_id INT NOT NULL;
ALTER TABLE data.passengers_opinion
    ADD CONSTRAINT passenger_id_fk
  FOREIGN KEY (passenger_id) REFERENCES passengers_opinion(id);

/*44*/
ALTER TABLE data.ride
    ADD COLUMN driver_id INT NOT NULL;
    ALTER TABLE data.ride
  ADD CONSTRAINT driver_id_fk
  FOREIGN KEY (driver_id) REFERENCES ride(id);

ALTER TABLE data.ride
  ADD COLUMN passenger_id INT NOT NULL;
ALTER TABLE data.ride
  ADD CONSTRAINT passenger_id_fk
  FOREIGN KEY (passenger_id) REFERENCES data.ride(id);

ALTER TABLE data.ride
    ADD COLUMN payment_id INT NOT NULL;
ALTER TABLE data.ride
  ADD CONSTRAINT payment_id_fk
  FOREIGN KEY (payment_id) REFERENCES data.ride(id);

ALTER TABLE data.ride
  ADD COLUMN drivers_car_id INT NOT NULL;
ALTER TABLE data.ride
  ADD CONSTRAINT drivers_car_fk
  FOREIGN KEY (drivers_car_id) REFERENCES data.ride(id);

    ALTER TABLE data.ride
    ADD COLUMN address_pickup_id INT NOT NULL;
ALTER TABLE data.ride
  ADD CONSTRAINT address_pickup_fk
  FOREIGN KEY (address_pickup_id) REFERENCES data.address(id);

 ALTER TABLE data.ride
    ADD COLUMN address_destination_id INT NOT NULL;
ALTER TABLE data.ride
  ADD CONSTRAINT address_destination_fk
  FOREIGN KEY (address_destination_id) REFERENCES data.address(id);

/*45*/

ALTER TABLE data.payment
  ADD COLUMN payment_type_id INT NOT NULL;
    ALTER TABLE data.payment
  ADD CONSTRAINT payment_fk
  FOREIGN KEY (payment_type_id) REFERENCES payment_type(id);

/*46*/
ALTER TABLE data.address
  ADD COLUMN area_id INT NOT NULL;
ALTER TABLE data.address
  ADD CONSTRAINT area_fk
  FOREIGN KEY (area_id) REFERENCES data.area(id);
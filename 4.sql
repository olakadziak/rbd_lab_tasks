TRUNCATE TABLE car_type;

DROP TABLE driver;

CREATE TABLE data.driver (
  id serial PRIMARY KEY,
  img bytea,
  payment_way_id INT NOT NULL
);
ALTER TABLE data.driver
    ADD COLUMN user.id
  ADD CONSTRAINT id_user_fk
  FOREIGN KEY (user_id) REFERENCES drivers_opinion(id);

ALTER TABLE data.address
  ADD COLUMN area_id INT NOT NULL;

ALTER TABLE data.address
  ADD CONSTRAINT area_id_fk
  FOREIGN KEY (area_id) REFERENCES area(id);

ALTER TABLE passenger
  ADD COLUMN user_id INT NOT NULL
  ADD CONSTRAINT user_id_fk
  FOREIGN KEY (user_id) REFERENCES user(id)
ADD COLUMN prefferd_payment_type INT NOT NULL
    ADD CONSTRAINT prefferd_payment_type_fk
  FOREIGN KEY (prefferd_payment_type) REFERENCES payment_type(id);

ALTER TABLE passengers_opinion
  ADD COLUMN passenger_id INT NOT NULL
    ADD CONSTRAINT passenger_id_fk
  FOREIGN KEY (passenger_id) REFERENCES passengers_opinion(id),
    ADD COLUMN ride_id INT NOT NULL
  ADD CONSTRAINT ride_id_fk
  FOREIGN KEY (ride_id) REFERENCES ride(id);

ALTER TABLE drivers_opinion
  ADD COLUMN driver_id INT NOT NULL
  ADD CONSTRAINT driver_id_fk
  FOREIGN KEY (driver_id) REFERENCES drivers_opinion(id)
    ADD COLUMN ride_id INT NOT NULL
  ADD CONSTRAINT ride_id_fk
  FOREIGN KEY (ride_id) REFERENCES ride(id);

ALTER TABLE drivers_car
  ADD COLUMN driver_id INT NOT NULL
  ADD CONSTRAINT driver_id_fk
  FOREIGN KEY (driver_id) REFERENCES drivers_car(id)
    ADD COLUMN car_id INT NOT NULL
  ADD CONSTRAINT car_id_fk
  FOREIGN KEY (car_id) REFERENCES car(id);

ALTER TABLE car
  ADD COLUMN car_type_id INT NOT NULL
  ADD CONSTRAINT car_type_id_fk
  FOREIGN KEY (car_type_id) REFERENCES car_type(id);

ALTER TABLE car
  ADD COLUMN car_type_id INT NOT NULL
  ADD CONSTRAINT car_type_id_fk
  FOREIGN KEY (car_type_id) REFERENCES car_type(id);









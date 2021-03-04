CREATE TABLE categories
(
    categ_id int AUTO_INCREMENT,
    categ_name varchar(50),
    CONSTRAINT categ_primary PRIMARY KEY(categ_id,categ_name)
);
create UNIQUE INDEX categ_name on categories(categ_name);




CREATE TABLE lots
(
    lot_id int PRIMARY KEY AUTO_INCREMENT,
    lot_user_id int,
    lot_winner_id int,
    lot_name varchar(50),
    lot_cated_id int,
    lot_discr text,
    lot_image text,
    lot_cr_date datetime,
    lot_comp_date datetime,
    lot_stert_prise int,
    lot_step int
);

create INDEX categ_index on lots(lot_cated_id);
create INDEX user_index on lots(lot_user_id);
create INDEX winner_index on lots(lot_winner_id);

CREATE TABLE bids
(
    bid_id int primary key AUTO_INCREMENT,
    user_id int,
    lot_id int,
    bid_date datetime,
    bid_price int
);

CREATE INDEX bid_lot_index on bids(lot_id);
CREATE INDEX bid_user_index on bids(user_id);



CREATE TABLE users
(
 user_id int AUTO_INCREMENT,
 user_name varchar(50),
 user_email varchar(50),
 user_password varchar(50),
 user_registr_data date,
 user_image text,
 user_contact varchar(50),
CONSTRAINT user_primary PRIMARY KEY(user_id,user_name,user_email)
);

CREATE INDEX user_name on users(user_name);
CREATE INDEX user_email on users(user_email);


ALTER TABLE lots
    ADD CONSTRAINT  lots_fk1 FOREIGN KEY (lot_user_id) REFERENCES  users(user_id);

ALTER TABLE lots
    ADD CONSTRAINT  lots_fk2 FOREIGN KEY (lot_cated_id) REFERENCES  categories(categ_id);

ALTER TABLE lots
    ADD CONSTRAINT  lots_fk3 FOREIGN KEY (lot_winner_id) REFERENCES  users(user_id);

ALTER TABLE bids
    ADD CONSTRAINT  bids_fk1 FOREIGN KEY (user_id) REFERENCES  users(user_id);

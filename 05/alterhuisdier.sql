ALTER TABLE huisdieren DROP COLUMN eigenaar;
ALTER TABLE huisdieren ADD COLUMN eigenaar INT NOT NULL;

update huisdieren set eigenaar = 3 where eigenaar = 1;
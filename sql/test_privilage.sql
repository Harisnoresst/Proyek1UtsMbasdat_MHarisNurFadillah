--Test backend_dev
SELECT * FROM SALAM.mahasiswas;

INSERT INTO SALAM.mahasiswas
    (nim, nama, email, umur, ipk)
VALUES
    ('1209090', 'Haris si backend',
     'Harisbackend@uin.com', 20, 3.70);

UPDATE SALAM.mahasiswas
SET ipk = 3.80
WHERE nim = '1209090';

DELETE FROM SALAM.mahasiswas
WHERE nim = '1209090';

--tes bi_dev
SELECT * FROM SALAM.mahasiswas;

--gagal
DELETE FROM SALAM.mahasiswas
WHERE nim = '1209001';

--tes data_engineer
CREATE TABLE SALAM.dataHaris (
    id INTEGER PRIMARY KEY,
    aktivitas VARCHAR(100)
);

ALTER TABLE SALAM.dataHaris
ADD COLUMN waktu TIMESTAMP;

INSERT INTO SALAM.dataHaris (id, aktivitas)
VALUES (1, 'mau rekap data uinn');

SELECT * FROM SALAM.dataHaris;

DROP TABLE SALAM.dataHaris;
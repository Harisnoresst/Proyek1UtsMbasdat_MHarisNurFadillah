
CREATE SCHEMA IF NOT EXISTS SALAM;

CREATE TABLE SALAM.mahasiswas (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nim VARCHAR(20) NOT NULL UNIQUE,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    umur INTEGER NOT NULL
        CHECK (umur BETWEEN 16 AND 100),
    ipk NUMERIC(3,2) NOT NULL
        CHECK (ipk BETWEEN 0 AND 4)
);

COMMENT ON SCHEMA SALAM IS
'Schema akademik untuk pengujian database UTS mBasdat M Haris Nur Fadillah';

COMMENT ON TABLE SALAM.mahasiswas IS
'Data mahasiswa dengan validasi identitas dan akademik';

INSERT INTO SALAM.mahasiswas
    (nim, nama, email, umur, ipk)
VALUES
    ('1247050090', 'Haris Nur Fadillah', 'haris@uin.com', 20, 3.54),
    ('1247050343', 'Jarius', 'jarius@uin.com', 21, 3.72),
    ('1247050203', 'Yuval', 'yuval@uin.com', 19, 2.90);

SELECT * FROM SALAM.mahasiswas;

select * from
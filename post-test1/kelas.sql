SHOW TABLES ;
CREATE TABLE kelas
(
    id_kelas     int primary key not null,
    nama_kelas   varchar(50)     not null,
    tingkatan    int(2)          not null,
    id_walikelas int             not null
);

ALTER TABLE kelas
    ADD FOREIGN KEY (id_walikelas) REFERENCES guru (id_guru);

SET foreign_key_checks = 0;

INSERT INTO kelas (id_kelas, nama_kelas, tingkatan, id_walikelas)
VALUES (2000, 'X MIPA 1', 10, 1000),
       (2001, 'X MIPA 2', 10, 1001),
       (2002, 'XI MIPA 1', 11, 1002),
       (2003, 'XI MIPA 2', 11, 1003),
       (2004, 'XII MIPA 1', 12, 1004),
       (2005, 'XII MIPA 2', 12, 1005);

DESC kelas;

SELECT * FROM kelas;
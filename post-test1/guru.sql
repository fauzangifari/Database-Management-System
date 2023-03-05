SHOW TABLES ;
CREATE TABLE guru
(
    id_guru            INT PRIMARY KEY NOT NULL ,
    nama_guru          VARCHAR(50)     NOT NULL ,
    alamat_guru        VARCHAR(50)     NOT NULL ,
    tanggal_lahir_guru DATE            NOT NULL ,
    jenis_kelamin      VARCHAR(50)     NOT NULL ,
    id_kelas           INT             NOT NULL
);

DESC guru;

INSERT INTO guru (id_guru, nama_guru, alamat_guru, tanggal_lahir_guru, jenis_kelamin, id_kelas)
VALUES (1000, 'Abdul Tedjo', 'Jl. Kebon Mangga', '1990-11-23', 'Laki-laki', 2000),
       (1001, 'Sakura Haruno', 'Jl. Antasari', '1990-09-18', 'Perempuan', 2001),
       (1002, 'Rudy Tabuti', 'Jl. Juanda', '1990-12-16', 'Laki-laki', 2002),
       (1003, 'Hinata Hyuga', 'Jl. Sirad Salman', '1989-02-01', 'Perempuan', 2003),
       (1004, 'Uzumaki Naruto', 'Jl. KS. Tubun', '1990-03-07', 'Laki-laki', 2004),
       (1005, 'Sri Megawati', 'Jl. Pahlawan', '1991-05-02', 'Perempuan', 2005);

ALTER TABLE guru
    ADD FOREIGN KEY (id_kelas) REFERENCES kelas (id_kelas);

SELECT * FROM guru;
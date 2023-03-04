create table siswa
(
    id_siswa      int         not null primary key,
    nama_siswa    varchar(50) not null,
    alamat_siswa  varchar(50) not null,
    tanggal_lahir date        not null,
    jenis_kelamin varchar(50) not null,
    id_kelas      int         not null
);

alter table siswa
    add foreign key (id_kelas) references kelas (id_kelas);

desc siswa;

insert into siswa (id_siswa, nama_siswa, alamat_siswa, tanggal_lahir, jenis_kelamin, id_kelas)
values (3000, 'Muhammad Fauzan Gifari', 'Jl. Juanda 4', '2004-02-09', 'Laki-laki', 1004),
       (3001, 'Mei Nagano', 'Jl. Piano', '2004-09-24', 'Perempuan', 1004),
       (3002, 'Muhammad Rifan Fathoni', 'Jl. Wiraguna', '2005-04-19', 'Laki-laki', 1003),
       (3003, 'Kanna Hashimoto', 'Jl. Pahlawan', '2005-02-03', 'Perempuan', 1002),
       (3004, 'Akhmad Qasim', 'Jl. Batu Besaung', '2005-12-13', 'Laki-laki', 1003),
       (3005, 'Arya Setiawan', 'Jl. Gunung Sampah', '2006-05-12', 'Laki-laki', 1001),
       (3006, 'Minami Hamabe', 'Jl. Juanda 2', '2006-11-19', 'Perempuan', 1000),
       (3007, 'Uesaka Sumire', 'Jl. Kadrie Oening', '2006-10-10', 'Perempuan', 1000);

select *
from siswa;

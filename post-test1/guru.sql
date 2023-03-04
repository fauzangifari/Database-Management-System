show tables;
CREATE table guru
(
    id_guru            int primary key not null,
    nama_guru          varchar(50)     not null,
    alamat_guru        varchar(50)     not null,
    tanggal_lahir_guru date            not null,
    jenis_kelamin      varchar(50)     not null,
    id_kelas           int             not null
);

desc guru;

insert into guru
values (1000, 'Abdul Tedjo', 'Jl. Kebon Mangga', '1990-11-23', 'Laki-laki', 2000),
       (1001, 'Sakura Haruno', 'Jl. Antasari', '1990-09-18', 'Perempuan', 2001),
       (1002, 'Rudy Tabuti', 'Jl. Juanda', '1990-12-16', 'Laki-laki', 2002),
       (1003, 'Hinata Hyuga', 'Jl. Sirad Salman', '1989-02-01', 'Perempuan', 2003),
       (1004, 'Uzumaki Naruto', 'Jl. KS. Tubun', '1990-03-07', 'Laki-laki', 2004),
       (1005, 'Sri Megawati', 'Jl. Pahlawan', '1991-05-02', 'Perempuan', 2005);

alter table guru
    add foreign key (id_kelas) references kelas (id_kelas);

select *
from guru;
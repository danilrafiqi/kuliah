show databases;

create database akademik1;

use akademik1;

show tables;

create table pendidikan (
idpendidikan int(11) NOT NULL AUTO_INCREMENT,
nmpendidikan varchar(30) NOT NULL,  
primary key (idpendidikan)
);

create table jenjang (
idjenjang int(11) NOT NULL AUTO_INCREMENT,
nmjenjang varchar(30) NOT NULL,
primary key (idjenjang)
);

create table jalurmasuk (
idjalurmasuk int(11) NOT NULL AUTO_INCREMENT,
nmjalurmasuk varchar(30) NOT NULL,
primary key (idjalurmasuk)    
);

create table prodi (
idprodi int(11) NOT NULL AUTO_INCREMENT,
namaprodi varchar(8) NOT NULL,
idjenjang int(11) NOT NULL,
akreditasi enum('C', 'B', 'A') NOT NULL,
tanggal_berdiri date NOT NULL,
noskpendirian varchar(50) NOT NULL,
email varchar(50) NOT NULL,
primary key (idprodi),    
foreign key (idjenjang) references jenjang(idjenjang)
);

create table dosen (
iddosen int(11) NOT NULL AUTO_INCREMENT,
nidn varchar(10) NOT NULL,
nama varchar(50) NOT NULL,
gelar varchar(30) NOT NULL,
tanggal_lahir date NOT NULL,
sex enum('-', 'L', 'P') NOT NULL,
tahun_masuk int(11) NOT NULL,
idps int(11) NOT NULL,
idpendidikan int(11) NOT NULL,
primary key (iddosen),
foreign key (idpendidikan) references pendidikan(idpendidikan),
foreign key (idps) references prodi(idprodi)
);

create table mahasiswa (
idmhs int(11) NOT NULL AUTO_INCREMENT,    
npm varchar(8) NOT NULL,
nama VARCHAR(50) NOT NULL,
tempat_lahir VARCHAR(30) NOT NULL,
tanggal_lahir date,
sex enum('-','L','P') NOT NULL,
tahun_masuk int(11) NOT NULL,
idps int(11) NOT NULL,
idjalurmasuk int(11) NOT NULL,
iddosen int(11) NOT NULL,
primary key (idmhs),
foreign key (idps) references prodi(idprodi),
foreign key (idjalurmasuk) references jalurmasuk(idjalurmasuk),
foreign key (iddosen) references dosen(iddosen)
);

show tables;
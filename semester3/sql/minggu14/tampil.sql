#Mahasiswa Program Studi Manajemen Informatika
SELECT npm, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM mahasiswa AS a WHERE idps = 7530;

#Mahasiswa Program Studi Akuntansi
SELECT npm, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = 7520) AS 'Program Studi' 
FROM mahasiswa AS a WHERE idps = '7520';

#Mahasiswa Program Studi Agribisnis
SELECT npm, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM mahasiswa AS a WHERE idps = '7510';

#Mahasiswa Program Studi Akuntansi Perpajakan
SELECT npm, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = 7550) AS 'Program Studi' 
FROM mahasiswa AS a WHERE idps = '7530';

#Mahasiswa Program Studi Agribisnis Pangan
SELECT npm, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = 7540) AS 'Program Studi' 
FROM mahasiswa  AS a WHERE idps = '7530';

#Dosen Program Studi Manajemen Informatika
SELECT nidn, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM dosen AS a WHERE idps = 7530;

#Dosen Program Studi Akuntansi
SELECT nidn, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM dosen AS a WHERE idps = 7520;

#Dosen Program Studi Agribisnis
SELECT nidn, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM dosen AS a WHERE idps = 7510;

#Dosen Program Studi Akuntansi Perpajakan
SELECT nidn, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM dosen AS a WHERE idps = 7550;

#Dosen Program Studi Agribisnis Pangan
SELECT nidn, nama, 
(SELECT namaprodi FROM prodi WHERE idprodi = a.idps) AS 'Program Studi' 
FROM dosen AS a WHERE idps = 7540;

#Jumlah mahasiswa terbimbing (PA) berdasarkan dosen
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT nama FROM dosen AS b WHERE b.iddosen = a.iddosen) 
FROM mahasiswa AS a GROUP BY iddosen;

#Jumlah dosen berdasarkan program studi
SELECT count(*) AS 'Jumlah Dosen',
(SELECT namaprodi FROM prodi AS b WHERE b.idprodi = a.idps) AS 'Prodi'
FROM dosen AS a GROUP BY idps;

#Jumlah dosen berdasarkan pendidikan
SELECT count(*) AS 'Jumlah Dosen',
(SELECT nmpendidikan FROM pendidikan AS b 
WHERE b.idpendidikan = a.idpendidikan) 
AS 'Pendidikan'
FROM dosen AS a GROUP BY idpendidikan;

#Jumlah dosen berdasarkan program studi dan pendidikan
SELECT count(*) AS 'Jumlah Dosen',
(SELECT nmpendidikan FROM pendidikan AS b 
WHERE b.idpendidikan = a.idpendidikan) 
AS 'Pendidikan',
(SELECT namaprodi FROM prodi AS b 
WHERE b.idprodi = a.idps) 
AS 'Prodi'
FROM dosen AS a GROUP BY idpendidikan, idps;


#Jumlah mahasiswa berdasarkan program studi
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT namaprodi FROM prodi AS b WHERE b.idprodi = a.idps) AS 'Prodi'
FROM mahasiswa AS a GROUP BY idps;

#Jumlah mahasiswa berdasarkan jalur masuk
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT nmjalurmasuk FROM jalurmasuk AS b WHERE b.idjalurmasuk = a.idjalurmasuk) AS 'Prodi'
FROM mahasiswa AS a GROUP BY idjalurmasuk;

#Jumlah mahasiswa berdasarkan tahun masuk
SELECT count(*) AS 'Jumlah Mahasiswa', tahun_masuk
FROM mahasiswa GROUP BY tahun_masuk;

#Jumlah mahasiswa berdasarkan program studi dan jalur masuk
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT namaprodi FROM prodi AS b WHERE b.idprodi = a.idps) AS 'Prodi',
(SELECT nmjalurmasuk FROM jalurmasuk AS b WHERE b.idjalurmasuk = a.idjalurmasuk) AS 'Prodi'
FROM mahasiswa AS a GROUP BY idjalurmasuk, idps;

#Jumlah mahasiswa berdasarkan program studi dan tahun masuk
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT namaprodi FROM prodi AS b WHERE b.idprodi = a.idps) AS 'Prodi',
tahun_masuk
FROM mahasiswa AS a GROUP BY tahun_masuk, idps;

#Jumlah mahasiswa berdasarkan program studi, jalur masuk dan tahun masuk
SELECT count(*) AS 'Jumlah Mahasiswa',
(SELECT namaprodi FROM prodi AS b WHERE b.idprodi = a.idps) AS 'Prodi',
(SELECT nmjalurmasuk FROM jalurmasuk AS b WHERE b.idjalurmasuk = a.idjalurmasuk) AS 'Prodi',
tahun_masuk
FROM mahasiswa AS a GROUP BY idps, idjalurmasuk, tahun_masuk;

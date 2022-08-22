- JOIN(menggabungkan lebih dari 2 table)
SOAL UKK

Mariadb
= MIN(
= MAX(
= COUNT(
= SUM(
= AVG(

CREATE TABLE
INSERT INTO
ONE - One
One - Money
Many - Many

1. SELECT nama,kelas, MIN(nilai) FROM siswa;
2. SELECT tempatlahir, MIN(nilai) FROM
   siswa GROUP BY tempatlahir;
3. SELECT tempatlahir, MAX(nilai) FROM
   siswa GROUP BY tempatlahir;
4. SELECT tempatlahir, MIN(nilai), MAX(nilai) FROM
   siswa GROUP BY tempatlahir;
5. SELECT tempatlahir, MIN(nilai) AS nilai_terendah,
   MAX(nilai) AS nilai_tertinggi
   FROM siswa GROUP BY tempatlahir;
6. SELECT tempatlahir, COUNT(tempatlahir)
   FROM siswa GROUP BY tempatlahir;
7  SELECT tempatlahir, COUNT(tempatlahir) AS orang_lahir
   FROM siswa GROUP BY tempatlahir;
8. SELECT jk, AVG(nilai) AS rata_rata
   FROM siswa GROUP BY jk;
9. SELECT jk, SUM(nilai) AS jumlah_nilai
   FROM siswa GROUP BY jk;


- INNER JOIN

1. SELECT siswa.*,pinjambuku.*
   FROM siswa 
   JOIN pinjambuku ON siswa.nis = pinjambuku.nis;

- RIGHT JOIN(table siswa yang meminjam buku)

1. SELECT * FROM siswa 
   RIGHT JOIN pinjambuku ON siswa.nis = pinjambuku.nis;
2. SELECT * FROM siswa 
   RIGHT JOIN pinjambuku ON siswa.nis = pinjambuku.nis
   WHERE siswa.nis IS NULL;

- LEFT JOIN (table siswa yang meminjam buku dan tidak meminjam buku)

1. SELECT * FROM siswa 
   LEFT JOIN pinjambuku ON siswa.nis = pinjambuku.nis;
2. SELECT * FROM siswa 
   LEFT JOIN pinjambuku ON siswa.nis = pinjambuku.nis
   WHERE pinjambuku.nis IS NULL;
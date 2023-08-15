

--STRING FONKS�YONLAR

-- LEFT : SOLDAN BEL�RT�LEN SAYIDA KARAKTER� GET�R�R

SELECT LEFT (Adi,2) FROM Personeller

--RIGHT : SA�DAN BEL�RT�LEN SAYIDA KARAKTER� GET�R�R.

SELECT RIGHT (Adi,2) FROM Personeller
--UPPER : B�Y�K HARFE �EV�R�R
SELECT UPPER (Adi) FROM Personeller
-- LOWER K���K HARFE �EV�R�R
SELECT LOWER (Adi) FROM Personeller
-- SUBSTRING : BEL�RT�LEN �NDEXTEN BEL�RT�LEN SAYIDA KARAKTER GET�R�R. 
SELECT SUBSTRING (Adi, 2,3) FROM Personeller

-- LTRIM : SOLDAN BO�LUKLARI S�LER
SELECT '              EFTAL'
SELECT LTRIM ('              EFTAL')

-- RTRIM : SA�DAK� BO�LUKLARI S�LER
SELECT 'EFTAL        '
SELECT RTRIM ('EFTAL'         )

-- REVERSE : Tersine �evirir
SELECT REVERSE (Adi) FROM Personeller

-- REPLACE : Belirtilen �fadeyi, belirtilen ifade ile de�i�tirir. 
SELECT REPLACE ('Benim Ad�m Eftal', 'Eftal', 'Y�ld�z')

-- CHARINDEX: Belirtilen karakterin veri i�erisinde s�ra numaras�n� verir. 
SELECT MusteriAdi, CHARINDEX (' ', MusteriAdi) FROM Musteriler


--CHARINDEX ORNEK
--M��teriler tablosunun MusteriAdi kolonundadan sadece adlar� �ekelim
SELECT MusteriAdi FROM Musteriler
--MusteriAdi kolonundaki veriyi s�f�r�nc� karakterden ba�layarak Charindex ile kullan�p ' ' yani bo�luk olana veriyi listeler. 
SELECT SUBSTRING(MusteriAdi,0,CHARINDEX(' ', MusteriAdi)) FROM Musteriler

--M��teriler tablosunun MusteriAdi kolonunundan sadece Soyadlar�n� �ekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ',MusteriAdi),
LEN(MusteriAdi)-(CHARINDEX(' ', MusteriAdi) -1)) FROM Musteriler
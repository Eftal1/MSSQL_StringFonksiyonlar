

--STRING FONKSÝYONLAR

-- LEFT : SOLDAN BELÝRTÝLEN SAYIDA KARAKTERÝ GETÝRÝR

SELECT LEFT (Adi,2) FROM Personeller

--RIGHT : SAÐDAN BELÝRTÝLEN SAYIDA KARAKTERÝ GETÝRÝR.

SELECT RIGHT (Adi,2) FROM Personeller
--UPPER : BÜYÜK HARFE ÇEVÝRÝR
SELECT UPPER (Adi) FROM Personeller
-- LOWER KÜÇÜK HARFE ÇEVÝRÝR
SELECT LOWER (Adi) FROM Personeller
-- SUBSTRING : BELÝRTÝLEN ÝNDEXTEN BELÝRTÝLEN SAYIDA KARAKTER GETÝRÝR. 
SELECT SUBSTRING (Adi, 2,3) FROM Personeller

-- LTRIM : SOLDAN BOÞLUKLARI SÝLER
SELECT '              EFTAL'
SELECT LTRIM ('              EFTAL')

-- RTRIM : SAÐDAKÝ BOÞLUKLARI SÝLER
SELECT 'EFTAL        '
SELECT RTRIM ('EFTAL'         )

-- REVERSE : Tersine Çevirir
SELECT REVERSE (Adi) FROM Personeller

-- REPLACE : Belirtilen Ýfadeyi, belirtilen ifade ile deðiþtirir. 
SELECT REPLACE ('Benim Adým Eftal', 'Eftal', 'Yýldýz')

-- CHARINDEX: Belirtilen karakterin veri içerisinde sýra numarasýný verir. 
SELECT MusteriAdi, CHARINDEX (' ', MusteriAdi) FROM Musteriler


--CHARINDEX ORNEK
--Müþteriler tablosunun MusteriAdi kolonundadan sadece adlarý çekelim
SELECT MusteriAdi FROM Musteriler
--MusteriAdi kolonundaki veriyi sýfýrýncý karakterden baþlayarak Charindex ile kullanýp ' ' yani boþluk olana veriyi listeler. 
SELECT SUBSTRING(MusteriAdi,0,CHARINDEX(' ', MusteriAdi)) FROM Musteriler

--Müþteriler tablosunun MusteriAdi kolonunundan sadece Soyadlarýný çekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ',MusteriAdi),
LEN(MusteriAdi)-(CHARINDEX(' ', MusteriAdi) -1)) FROM Musteriler


![](/imgs/logo.jpg)
# SAYISAL TASARIM LABORATUVARI PROJE RAPORU DECODER VE ENCODER


	
Mehmet SANTOR
330081-1.öğretim


# GİRİŞ

Bu projede encoder ve decoder kombinasyonel devreleri incelenmiş ve ModelSim uygulaması yardımı ile simüle edilmiştir.


# Encoder - Decoder Nedir? 

Endüstride, haberleşmede, bilgisayarda ve daha birçok yerde dijital elektronik kullanılır.
Elektronik sistemlerde, çiplerin içerisinde mantık devreleri bulunmaktadır.
Bu mantık devrelerinde en basitinden kodlayıcı ve kod çözücülerle işlemler yapılır. 
 ![](/imgs/1.jpg)
 
 
# Kodlayıcı Devreler 

Kodlayıcı, sayısal bir bilginin, başka bir sayısal bilgiye dönüştürülmesi için kullanılan lojik bir devredir.
Örneğin, desimal (onluk) sayı sisteminde girilen sayısal bilgileri, binary (ikili) sayı sistemlerine dönüştürür.
Alfanümerik tuş takımlarında ve klavyede kodlayıcı devreler kullanılır.   
 ![](/imgs/2.jpg)
### Kodlayıcı Blok şeması

# Kodlayıcı Tasarımı
Kodlayıcı tasarlarken giriş sayısını belirlememiz lazım. Bu girişleri kodlayabilecek minimum çıkış sayısını hesaplarız.
 12 adet giriş kodlanması gerekiyorsa 2n > 12 formülü yardımıyla n’nin değerinin 4 olduğunu ve devrede 4 tane çıkış olması gerektiğini buluruz.
 Doğruluk tablosunu oluşturup, devrenin tasarımına geçilir.

4 bitlik giriş kodlamak istersek;

2^n>4 formülünden n=2
![](/imgs/3.jpg)
### 4x2 Encoder Doğruluk Tablosu

D0 girişi 1 olunca çıkış 00
D1 girişi 1 olunca çıkış 01
D2 girişi 1 olunca çıkış 10
D3 girişi 1 olunca çıkış 11

Çıkışların 1 olduğu yerlerin denklemi yazılırsa;

X=D2+D3
Y=D3+D1
![](/imgs/4.jpg)
### 4X2 Encoder devresi


# Decimal – BCD kodlayıcı 
10’luk sayı sisteminde ki kodları, bcd (ikili sayı sistemi ) koduna dönüştürür. 
![](/imgs/5.jpg)
###  Decimal-BCD Doğruluk tablosu
 
# Kod Çözücü Devreler 

Kod çözücü(decoder), kodlayıcının tersi işlem yapar.
Kodlanmış bilgileri anlaşılır hale dönüştürmek için kullanılır.
Örneğin cep telefonumuza gelen mesajları 2’lik sayı sisteminde anlayamayız.
Gelen bilgiler çözümlenerek metin formatı haline getirilir. Bilgisayarda anakart, diğer mikroişlemcilerde adresleme amacıyla kullanılır. 
![](/imgs/6.jpg)
###  Kod çözücü blok diyagram
 
# Kod Çözücü Tasarımı

Kod çözücü tasarlarken n tane giriş varsa 2n tane çıkış vardır.  
Kodlayıcı ve Kod Çözücü Entegreler Entegreler devre tasarımını daha kolay ve düşük maliyetli hale getirmektedir.
Kodlayıcı ve kod çözücü tasarlarken çeşitli devre elemanları kullanmaktansa tümleşik entegreler tercih edilir.
TTL, CMOS gibi entegre türleri çoğunlukla kullanılır. 
![](/imgs/7.jpg)
### 2x4 decoder doğruluk tablosu

Y0= ¯AB
Y1=¯AB
Y2=A¯B
Y3=AB
![](/imgs/8.jpg)
###   2x4 tasarlanmış decoder

# Simüle Edilen Devreler

# - 8:3 ENCODER
![](/imgs/9.jpg)
### Blok diyagram ve doğruluk tablosu

# - 16:4 ENCODER
![](/imgs/10.jpg)
### Blok diyagram
![](/imgs/11.jpg)
###Doğruluk tablosu 

# - 3:8 DECODER
![](/imgs/12.jpg)
### Blok diyagram ve doğruluk tablosu

# - 4:16 DECODER
![](/imgs/13.jpg)
### Blok diyagram ve doğruluk tablosu

# Kodlayıcı entegreler 
 
 
# - 74LS147 
 
Desimal – BCD kodlama için kullanılır. Klavye kodlama ve seçme işlemleri için uygundur. 
![](/imgs/14.jpg)
### 74LS147 entegresi ve bacak isimleri
 
Normal koşullarda çıkış aktif olduğunda değeri lojik 1 olması gerekir. Bu çıkışa aktif 1 (Active High) adı verilir.
Eğer ki çıkış aktif olduğunda değeri lojik 0 oluyorsa buna aktif 0 (Active Low) adı verilir. 
 
74LS147 entegresi giriş ve çıkışları aktif 0’dır. Yani girişin aktif olabilmesi için lojik 0 uygulanmalıdır, çıkış aktif olduğunda lojik 0 alınır. 
 
74LS147 entegresi de öncelikli kodlayıcıdır, yüksek girişin önceliği vardır. En yüksek giriş 9. Giriştir. 
![](/imgs/15.jpg)
### 74LS147 doğruluk tablosu
 
 
# - 74LS148 
 
Octal – BCD kodlama için kullanılır. 74148 entegresi 8 giriş 3 çıkış öncelikli kodlayıcıdır.
Bu entegre için, Bu entegrenin girişleri değillenmiştir. Yani girişleri aktif etmek için lojik 0 verilmelidir.
Bu entegrenin 8 girişi(G0 – G7) ve bir kontrol ucu(Ein) vardır. Ein=1 olduğunda entegre pasif durumdadır. 
![](/imgs/16.jpg)
### 74148 entegresi

![](/imgs/17.jpg)
### 74LS148 doğruluk tablosu
 
# Kod çözücü entegreler 
 
# - 74LS138 
 
74LS138 kod çözücü entegresi hafıza sistemlerinde entegre seçiminde ve benzer amaçlarla diğer elektronik devrelerde kullanılır.
Demultiplexer elemanı olarak da kullanılabilmektedir. 
![](/imgs/18.jpg)
 ### 74LS138 decoder entegresi ve bacak isimleri
 
 
# - 74LS47 ve 7 segment display 
![](/imgs/19.jpg)
### 74LS47 Decoder entegresi
![](/imgs/20.jpg)
 
 
Giriş değerlerine göre çıkışta elde edilen 7 ledli göstergeye uygun bilgiler görülmektedir.
Entegre çıkışında 7 ledli gösterge değerlerini elde etmek için LT, RBI ve BI/RB0 uçlarının lojik-1’e bağlanması gereklidir. 
![](/imgs/21.jpg)
### Doğruluk tablosu

![](/imgs/22.jpg)
### 7447 İSİS çizimi

![](/imgs/23.jpg)
### 7 segment display çıkışı
 
 
Encoder ve decoder kullanım alanları Kod çözücü (decoder) ile bir kodlayıcı (encoder) arka arkaya bağlanırsa, 
sistemin girdi değeri, çıktı değeri olarak okunur. Kodlayıcı devresini, kapılar kullanarak yapmak da mümkündür. 
 
Sayısal kodlayıcılar motorların şaftlarına yerleştirilerek servo motor üretiminde kullanılmaktadırlar.
Hareketi dijital darbelere (puls) dönüştüren cihazlardır.
Elde edilen bu dijital darbeler sayılarak ya da bit şeklinde okunarak hareketin hızını veya cismin o anki konumunu elde etmek mümkündür.





# KAYNAKÇA: 
- https://www.coursehero.com/tutors-problems/Computer-Science/9973001-Please-refer-to-the-attachment-to-answer-this-question-This-question/
- https://www.elektrikport.com/teknik-kutuphane/encoder--decoder-nedir/16911#ad-image-0
 
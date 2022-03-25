--------------------------------------------------------
--  File created - Monday-March-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------
CREATE TABLE "ADMIN" (
  "FELHASZNALONEV" VARCHAR2(40 BYTE),
  "INTEZET" VARCHAR2(60 BYTE),
  "TUDOMANYOS_FOKOZAT" VARCHAR2(40 BYTE),
  "SZAKTERULET" VARCHAR2(40 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table CIKK
--------------------------------------------------------
CREATE TABLE "CIKK" (
  "CIM" VARCHAR2(40 BYTE),
  "TARTALOM" VARCHAR2(300 BYTE),
  "LETREHOZAS_DATUM" DATE
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------
CREATE TABLE "FELHASZNALO" (
  "FELHASZNALONEV" VARCHAR2(40 BYTE),
  "SZERZO_E" CHAR(1 BYTE),
  "EMAIL" VARCHAR2(40 BYTE),
  "JELSZO" VARCHAR2(40 BYTE),
  "SZUL_DATUM" DATE
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table FORRAS
--------------------------------------------------------
CREATE TABLE "FORRAS" (
  "CIM" VARCHAR2(40 BYTE),
  "HIVATKOZAS" VARCHAR2(30 BYTE),
  "TARTALOM" VARCHAR2(200 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table HIBA_BEJELENTES
--------------------------------------------------------
CREATE TABLE "HIBA_BEJELENTES" (
  "CIM" VARCHAR2(40 BYTE),
  "HIBAJELENTES" VARCHAR2(100 BYTE),
  "HIBANEV" VARCHAR2(20 BYTE),
  "FELHASZNALONEV" VARCHAR2(40 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table KULCSSZO
--------------------------------------------------------
CREATE TABLE "KULCSSZO" (
  "CIM" VARCHAR2(40 BYTE),
  "MEGNEVEZES" VARCHAR2(30 BYTE),
  "LINK" VARCHAR2(30 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table MODOSITAS
--------------------------------------------------------
CREATE TABLE "MODOSITAS" (
  "CIM" VARCHAR2(40 BYTE),
  "MIKOR" DATE,
  "FELHASZNALONEV" VARCHAR2(40 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Table TEMAKOR
--------------------------------------------------------
CREATE TABLE "TEMAKOR" (
  "CIM" VARCHAR2(40 BYTE),
  "NEV" VARCHAR2(30 BYTE),
  "ALTEMAKOR" VARCHAR2(30 BYTE),
  "TARTALOM" VARCHAR2(200 BYTE)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

REM INSERTING into GYURI.ADMIN
SET
  DEFINE OFF;

REM INSERTING into GYURI.CIKK
SET
  DEFINE OFF;

REM INSERTING into GYURI.FELHASZNALO
SET
  DEFINE OFF;

REM INSERTING into GYURI.FORRAS
SET
  DEFINE OFF;

REM INSERTING into GYURI.HIBA_BEJELENTES
SET
  DEFINE OFF;

REM INSERTING into GYURI.KULCSSZO
SET
  DEFINE OFF;

REM INSERTING into GYURI.MODOSITAS
SET
  DEFINE OFF;

REM INSERTING into GYURI.TEMAKOR
SET
  DEFINE OFF;

REM INSERTING into HOME.ADMIN
SET
    DEFINE OFF;
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('varga__timi','MTA','PhD','Magyar nyelv �s irodalom');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('mesi_kurucz','SZTE TTIK','PhD','Matematika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('elekes_anna','SZTE TTIK','PhD','Term�szettudom�nyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('f.imi','ELTE BTK','PhD','B�lcs�szettudom�nyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('marci79','SZTE �JTK','PhD','Jogtudom�nyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('gabi_holi','ELTE T�TK','PhD','Szociol�gia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('g_jani__72','SZTE TTIK','PhD','Informatika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('eszterrr','MTA','PhD','Agr�rtudom�nyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('_galambos_norbi_','ELTE BTK','PhD','Filoz�fia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('-noncsi-','MTA','PhD','Nyelv�szet');

REM INSERTING into HOME.CIKK
SET
    DEFINE OFF;
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Sz�m�t�g�p-tudom�ny','A sz�m�t�g�p-programoz�s egy vagy t�bb absztrakt algoritmus megval�s�t�s�t jelenti egy bizonyos programoz�si nyelven. A programoz�sban megtal�ljuk a m�v�szet, a tudom�ny, a matematika �s a m�rn�ki tudom�ny elemeit.',to_date('20-M�RC. -05','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Rendszerfejleszt�s','A rendszerfejleszt�st a programoz�s, szoftverfejleszt�s egyik l�p�sek�nt kezeli. Eszk�zt�r�t a feladat nagys�g�t�l, c�lj�t�l f�gg�en haszn�lj�k fel a programoz�s sor�n: szabv�nyos modellez�, rendszerfejleszt�si m�dszertan, projektmenedzsment, alkalmaz�sfejleszt�s stb. ',to_date('19-M�RC. -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Macska','A macska, m�s n�ven h�zi macska kiseb termet� h�sev� eml�s, amely a ragadoz�k rendj�n bel�l a macskaf�l�k csal�dj�nak Felis nem�hez �s vadmacska faj�hoz tartozik. A vadmacska alfaja.',to_date('20-J�L.  -17','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Kutya','A kutya vagy eb ujjon j�r� eml�s ragadoz� �llat, a sz�rke farkas egy m�r kihalt alfaj�nak h�zias�tott form�ja. Az egyetlen olyan eml�s �llatfaj, amely tudom�nyos nev�ben megkapta a familiaris, azaz a csal�dhoz tartoz� jelz�t. A kuty�kat szok�s a t�rs�llatok sor�ban emlegetni.',to_date('20-OKT.  -07','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Pitagorasz-t�tel','A Pitagorasz-t�tel az euklideszi geometria egyik alapvet� �ll�t�sa. B�rmely der�ksz�g� h�romsz�g leghosszabb oldal�nak (�tfog�j�nak) n�gyzete megegyezik a m�sik k�t oldal (a befog�k) n�gyzet�sszeg�vel.',to_date('21-J�L.  -22','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Gersgorin-t�tel','A line�ris algebr�ban a Gersgorin-t�tel azt mondja ki, hogy a komplex test feletti n�gyzetes m�trix saj�t�rt�kei a komplex s�kon a f��tl� elemei k�r�li �gynevezett Gersgorin-k�r�k�n bel�l tal�lhat�ak. ',to_date('21-M�J.  -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Himnusz','A himnusz dics��t� �s magasztal� �nek. Eredetileg vall�sos jelleg�, Istent vagy isteni hatalmat dics��t�, hozz� seg�ts�g�rt foh�szkod�, imaszer� l�rai m�faj. T�rgya �s alkalma teh�t eredetileg valamely istens�g vagy Isten dics�rete, megnyer�se �s magasztal�sa.',to_date('21-AUG.  -10','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('K�lt�szet','A k�lt�szet az irodalomnak m�v�szeti �ga. Mint az emberi l�lek m�v�szi tev�kenys�ge, egyr�szt a m�v�szetek k�z� tartozik, m�sr�szt mint irodalmi munk�ss�g, az ember besz�dm�vei k�z�. T�rv�nyeit tudom�nyos rendszeress�ggel a k�lt�szettan (po�tika) t�rgyalja. ',to_date('18-AUG.  -22','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Nyelv�szet','�ltal�noss�gban a nyelv�szet, latinosan grammatika az emberi nyelvekkel foglalkoz� tudom�ny�g, �s nyelv�sz az, aki ezt a tudom�nyt m�veli.',to_date('17-J�N.  -13','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Filoz�fia','A filoz�fia, mint tudom�ny alapk�rd�se, hogy mik�ppen viszonyul a gondolkod�s a l�thez, a tudat az anyaghoz. A k�l�nb�z� filoz�fiai rendszerek tulajdonk�ppen mind e probl�ma kifejt�sei, megold�sai, m�g abban az esetben is, ha az alapk�rd�st k�zvetlen�l nem is vetik fel.',to_date('16-M�J.  -06','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('B�ntet�jog','A b�ntet�jog a jog azon �ga, amely meghat�rozza azokat a k�z�ss�gellenes, nemk�v�natos magatart�sokat, amelyek tan�s�t�sa, �s jogelleness�get kiz�r� t�nyez�k hi�nya eset�n az elk�vet�t b�ntet�jogi felel�ss�gre vonj�k �s amennyiben b�n�s megb�ntetik.',to_date('19-FEBR. -14','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('B�r�s�g','A b�r�s�gok az igazs�gszolg�ltat�st gyakorl�, m�s hatalmi �gakt�l f�ggetlen, politikailag �s vil�gn�zetileg semleges, �n�ll� hat�s�gok.A b�r�s�gok feladatait a b�r�k �s egy�b b�r�s�gi alkalmazottak l�tj�k el.',to_date('15-AUG.  -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Szociol�gia','A szociol�gia a t�rsadalmi �let �sszetev�i, az egy�nek, csoportok, szervezetek, int�zm�nyek (csal�d, iskola, egyh�z, �llam stb.) �let�nek, m�k�d�s�nek t�rv�nyszer�s�geit, szab�lyait �s folyamatait vizsg�l� elm�leti �s gyakorlati tudom�ny.',to_date('18-AUG.  -09','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Karl Marx','Karl Marx (Trier, 1818. m�jus 5. � London, 1883. m�rcius 14.) n�met filoz�fus, k�zgazd�sz, szociol�gus, a kommunista munk�smozgalom teoretikusa, egyben a marxizmus ihlet�je; munk�ss�ga jelent�sen hozz�j�rult a t�rsadalomtudom�ny fejl�d�s�hez.',to_date('19-NOV.  -21','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Madarak','A madarak meszes h�j� toj�ssal szaporod�, melegv�r� gerinces �llatok. Mells� v�gtagjaik sz�rnyakk� m�dosultak. J�r�l�baik vannak , melyeken megtal�lhat� a cs�d,amely el�seg�ti a landol�st. Szegycsontjuk tarajos, melyhez er�s mellizmok tapadnak, �gy seg�tve a rep�l�st.',to_date('18-OKT.  -10','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('�llatteny�szt�s','Az �llatteny�szt�s a mez�gazdas�g egyik f� ter�let�t k�pez� gazdas�gi tev�kenys�g. A hat�lyos magyar t�rv�nyi meghat�roz�s szerint "Az �llatok teny�sz- �s haszon�rt�k�t n�vel� c�lir�nyos tev�kenys�gek �sszess�ge.',to_date('20-SZEPT.-23','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Sakkt�bla f�ldter�let','A sakkt�bl�sod�s olyan helyzetre utal, amikor a f�ldtulajdon k�t vagy t�bb tulajdonos k�z�tt keveredik, ami sakkt�bl�s mint�zatot eredm�nyez. Mivel a kiosztott f�ldter�leteket elt�r� m�don �s intenzit�ssal m�velik, a sakkt�bla-mint�zat �gy a leveg�b�l is l�that�.',to_date('21-M�RC. -11','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a h�tk�znapi besz�dben gyakran haszn�lt igeid�je. Jelent�se: present=jelen, perfect=t�k�letes, befejezett. �sszetett igeid�, k�t tagb�l �ll: a to have (birtokolni), mint seg�dige egyszer� jelen idej�b�l �s a f�ige. ',to_date('22-JAN.  -06','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('C nyelv','A C egy �ltal�nos c�l� programoz�si nyelv, melyet Dennis Ritchie �s fejlesztette ki 1969 �s 1973 k�z�tt a UNIX rendszerekre. Id�vel j�form�n minden oper�ci�s rendszerre k�sz�tettek C ford�t�programot, �s a legn�pszer�bb programoz�si nyelvek egyik�v� v�lt.',to_date('20-J�L.  -15','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('K�olaj','A k�olaj (m�s n�ven �sv�nyolaj) a F�ld szil�rd k�rg�ben tal�lhat� term�szetes eredet�, �l� szervezetek boml�s�val, �talakul�s�val keletkezett �sv�nyi term�k. F� �sszetev�i foly�kony halmaz�llapot� sz�nhidrog�nek.',to_date('21-AUG.  -31','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Atomenergia','Az atomenergia a magreakci� kontroll�lt felhaszn�l�sa munka, h� �s elektromoss�g form�j� energia l�trehoz�s�nak c�lj�b�l. Egy ir�ny�tott l�ncreakci� ut�n keletkezik �s h�t hoz l�tre, amit v�z felforral�s�ra, g�z el��ll�t�s�ra, g�zturbina meghajt�s�ra haszn�lnak.',to_date('21-M�RC. -05','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('N�gyzet','A n�gyzet egyenl� oldal� t�glalap, vagyis olyan soksz�g, melynek n�gy egyenl� oldala �s n�gy egyenl� sz�ge, m�gpedig der�ksz�ge van. T�rbeli megfelel�je a kocka.',to_date('20-OKT.  -12','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Hardver','Hardver a sz�m�t�g�p fizikailag megfoghat� r�szeinek �sszess�ge. A sz�m�t�g�p m�k�d�s�hez alapvet�en hardver �s szoftver sz�ks�ges, a kett� k�z�tti kapcsolatot a firmware hozza l�tre, ami a hardverekbe a gy�rt�k �ltal "be�p�tett" szoftvernek tekinthet�. ',to_date('19-M�J.  -14','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Macskafajt�k','A macskateny�szt�s eredm�nyek�nt a h�zi macska sz�mos fajt�j�t siker�lt kiteny�szteni. Egyes fajt�k kialak�t�s�n�l a h�zi macsk�t vadon �l� macskafajokkal keresztezt�k, �gy j�tt l�tre p�ld�ul a beng�li �s a szavanna.',to_date('19-M�RC. -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Alma','Az alma vagy almafa a r�zsaf�l�k csal�dj�ba tartoz� n�v�nynemzets�g. K�r�lbel�l 55 faj tartozik ide, melyek t�bs�ge �zsi�ban, kisebb r�sze Eur�p�ban �s �szak-Amerik�ban honos. A nemzets�gbe tartoz� egyedek, vagyis az almaf�k term�s�nek a neve is alma.',to_date('19-M�RC. -01','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Almasav','Az almasav savanyk�s �z�, szerves dikarbonsav, ami sz�mos savany� �telben megtal�lhat�. Sz�ntelen krist�lyokat alkot. Higroszk�pos vegy�let. J�l old�dik v�zben �s alkoholban. A borosty�nk�sav hidroxisz�rmaz�k�nak tekinthet�.',to_date('19-J�N.  -17','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Szem�lyi jog','A szem�lyi jog a polg�ri jog viszonylag �n�ll� jogter�lete, amely a szem�lyi viszonyok, k�l�n�sen a jogalanyis�g �s a szem�lyis�gi jogok szab�lyoz�s�n kereszt�l biztos�tja, v�di a szem�lyi auton�mi�t, a szem�lyek �nrendelkez�s�nek, �nmegval�s�t�s�nak szabads�g�t',to_date('21-OKT.  -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('T�glalap','A t�glalap egy olyan n�gysz�g, amelynek minden sz�ge der�ksz�g. K�t-k�t szemk�zti oldala egyenl� hossz�s�g�, ez�rt minden t�glalap egyben paralelogramma is. A n�gyzet a t�glalap egy speci�lis t�pusa, amelynek minden oldala egyenl�. A t�glalap bels� sz�geinek �sszege 360�.',to_date('22-JAN.  -13','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Tulajdonn�v','A tulajdonn�v a f�nevek azon fajt�ja, amely egy konkr�t egyedre utal, teh�t azonos�t� funkci�t t�lt be. Fajt�i: szem�lynevek, �llatnevek, t�rgynevek, f�ldrajzi nevek, int�zm�nynevek, m�rkanevek... ',to_date('20-M�RC. -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Pet�fi S�ndor','Pet�fi S�ndor (sz�letett Petrovics S�ndor, Kisk�r�s, 1823. janu�r 1. - Feh�regyh�za k�r�l, 1849. j�lius 31.) magyar k�lt�, forradalm�r, nemzeti h�s, a magyar k�lt�szet egyik legismertebb �s egyik legkiemelked�bb alakja.',to_date('20-J�L.  -14','RR-MON-DD'));

REM INSERTING into HOME.FELHASZNALO
SET
    DEFINE OFF;
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kissferenc','n','kissferenc@gmail.com','nfhhz567e',to_date('72-M�J.  -19','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('evi_nagy','y','evelinnagy@freemail.hu','56hzf78ki',to_date('92-M�RC. -13','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('f.imi','y','feketeimre65@gmail.com','j54dt789u',to_date('84-OKT.  -26','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elekes_anna','y','eanna@gmail.hu','rjfi876hnb',to_date('89-SZEPT.-06','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('hajnus_seres','n','hajniseres@gmail.com','kdtsg436w',to_date('04-AUG.  -12','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kerekes.zs','n','zsolt88@freemail.hu','jsteg1c357',to_date('88-�PR.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('marci79','y','marcellkis79@gmail.com','25g4fd57s',to_date('79-NOV.  -30','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('peti','n','peterhalmos@freemail.hu','hjau5gd3n',to_date('82-J�L.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gizi_deli98','y','dgizella@gmail.com','uks68n6g43',to_date('98-JAN.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rudolf_','n','baloghrudolf@gmail.com','8jvbg643dl',to_date('76-FEBR. -05','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('andikaa_:)_','y','bandrea@gmail.com','9kdtg54d21',to_date('99-J�L.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_galambos_norbi_','y','gnorbert@freemail.hu','jfhsz765bf',to_date('00-DEC.  -21','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('lali_nagy','n','nagylajos@gmail.com','arfv4f2fs4',to_date('96-J�N.  -06','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kevin_1995','n','gkevin1995@gmail.com','9ikhgfs67s',to_date('95-OKT.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values (';)_sacika_','n','soossarolta@freemail.hu','5dgftrv4h2',to_date('02-SZEPT.-26','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*--lina--*','y','karolinatoth@gmail.com','9kdifhsn54',to_date('98-FEBR. -14','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('mesi_kurucz','y','kuruczemese@gmail.com','nspo7h5x8x',to_date('87-AUG.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kucsera-adri','n','adriennkucsera@gmail.com','8li84fs3fa',to_date('93-M�J.  -29','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*petruska*','n','bodapetra@freemail.hu','1da23sksu4',to_date('95-J�L.  -04','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kiss_bali','n','balazskiss@gmail.com','7a3exoxo5t',to_date('90-OKT.  -09','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ricsi','n','ricsikocsis@gmail.com','oa8sj5rsha',to_date('02-AUG.  -01','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rebi_2003','y','rebekakardos@freemail.hu','5s7hd4xgsz',to_date('03-NOV.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('roland_halmai','n','halmairoland96@gmail.com','5364gs5sga',to_date('96-SZEPT.-22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gabi_holi','y','holigabriella@gmail.com','ze5dhf6ess',to_date('82-M�J.  -27','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('g_jani__72','y','janosgal@gmail.com','ksihdb63sa',to_date('72-J�N.  -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*armando;)*','y','armandtoth@freemail.hu','64rdkdks8q',to_date('92-J�N.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gerikeee_','n','gergodobos@gmail.com','sg537rjd6a',to_date('85-DEC.  -18','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gyuszi','n','gyuladarai@gmail.com','kd64na92ms',to_date('64-SZEPT.-08','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_cs_i_p_i_','y','kiralyildi77@gmail.com','ie6429s721',to_date('77-J�L.  -28','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('-noncsi-','y','hercegnoemi@gmail.com','52g638dhd5',to_date('99-DEC.  -31','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ercsi','n','kerierika@freemail.hu','twhs426dgs',to_date('03-J�N.  -19','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('szilvi82','n','feherszilvia@gmail.com','1za306gsua',to_date('98-AUG.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_r_n_t__','y','derrenata@gmail.com','27shd54hsf',to_date('72-FEBR. -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('maci_laci_:)','y','mackolaszlo@gmail.com','ie537qjd62',to_date('63-J�L.  -25','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('yvette','n','radicsivett5@freemail.hu','725srddxks',to_date('95-NOV.  -14','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_-leo-_','y','szaboleopold@freemail.hu','j734197sda',to_date('05-M�J.  -03','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('karcsi*-*','n','vaskaroly@gmail.com','9hs52hej82',to_date('56-SZEPT.-20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('varga__timi','y','timeavarga@gmail.com','i893s51vax',to_date('76-J�L.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('v_kt_r__','n','kelemenviktoria@freemail.hu','714qgd2hxn',to_date('67-J�L.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_vendel--','n','vendelszabo@gmail.com','5isd839jsx',to_date('86-SZEPT.-30','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('n_a_t_i','n','nataliaszakali@gmail.com','1zs628csgn',to_date('90-OKT.  -17','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('o.martin','n','hercegmartin@gmail.com','628sjs6sta',to_date('91-AUG.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_kende_02','n','kunkende@freemail.hu','6sh24sdkka',to_date('02-SZEPT.-11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('levi','n','leventekalmar@gmail.com','qe3s56gsya',to_date('87-M�J.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('eszterrr','y','esztervarga@freemail.hu','t37ejsksld',to_date('73-NOV.  -21','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elek_ferenc','n','elekferenc63@gmail.com','us6a5sjqky',to_date('62-J�L.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('__albi__','n','abertfont@gmail.com','tw5nxska4',to_date('82-J�L.  -27','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('bence<*>','n','tothbence@freemail.hu','jsk5918hss',to_date('83-FEBR. -17','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_van_dus_','n','deakvanda@gmail.com','7q21tg35s',to_date('86-DEC.  -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('pisti','n','pistihajdrik@gmail.com','ows7kwiw7',to_date('83-JAN.  -07','RR-MON-DD'));

REM INSERTING into HOME.FORRAS
SET
    DEFINE OFF;
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sz�m�t�g�p-tudom�ny','https://hu.wikipedia.org/wiki/Sz�m�t�g�p-programoz�s',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('B�r�s�g','https://hu.wikipedia.org/wiki/Magyarorsz�g_b�r�s�gai',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejleszt�s','https://hu.wikipedia.org/wiki/Sz�m�t�g�p-programoz�s',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelv�szet','https://hu.wikipedia.org/wiki/Nyelv�szet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociol�gia','https://hu.wikipedia.org/wiki/Szociol�gia',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('K�lt�szet','https://hu.wikipedia.org/wiki/K�lt�szet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('B�ntet�jog','https://hu.wikipedia.org/wiki/B�ntet�jog',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(n�v�nynemzets�g)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajt�k','https://hu.wikipedia.org/wiki/Macskafajt�k_list�ja',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonn�v','https://hu.wikipedia.org/wiki/Tulajdonn�v',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pet�fi S�ndor','https://hu.wikipedia.org/wiki/Pet�fi_S�ndor',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programoz�si_nyelv)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('�llatteny�szt�s','https://hu.wikipedia.org/wiki/�llatteny�szt�s',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('N�gyzet','https://hu.wikipedia.org/wiki/N�gyzet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakkt�bla f�ldter�let','https://hu.wikipedia.org/wiki/Sakkt�bla_(f�ldter�let)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-t�tel','https://hu.wikipedia.org/wiki/Gersgorin-t�tel',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-t�tel','https://hu.wikipedia.org/wiki/Pitagorasz-t�tel',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('K�olaj','https://hu.wikipedia.org/wiki/K�olaj',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szem�lyi jog','https://hu.wikipedia.org/wiki/Szem�lyi_jog',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('T�glalap','https://hu.wikipedia.org/wiki/T�glalap',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filoz�fia','https://hu.wikipedia.org/wiki/A_filoz�fia_alapk�rd�se',' ');

REM INSERTING into HOME.HIBA_BEJELENTES
SET
    DEFINE OFF;
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A sz�let�si �s hal�loz�si d�tum k�z�tt ? van.','el�r�s','_rudolf_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('T�glalap','A 360 ut�n a fokjel helyett ? van �rva.','el�r�s',';)_sacika_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A t�bbs�ge sz� rosszul van �rva.','helyes�r�si hiba','lali_nagy');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az �llatok sz� rosszul van �rva.','helyes�r�si hiba','*petruska*');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb sz� rosszul van �rva.','helyes�r�si hiba','yvette');

REM INSERTING into HOME.KULCSSZO
SET
    DEFINE OFF;
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('B�r�s�g','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filoz�fia','Filoz�fia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelv�szet','Nyelv�szet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociol�gia','Szociol�gia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('K�lt�szet','K�lt�szet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Mad�r',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('B�ntet�jog','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejleszt�s','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajt�k','Macska',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filoz�fia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonn�v','Nyelvtan',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sz�m�t�g�p-tudom�ny','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pet�fi S�ndor','K�lt�szet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('�llatteny�szt�s','Agr�r',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('N�gyzet','N�gysz�g',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','K�mia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakkt�bla f�ldter�let','Agr�r',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-t�tel','Matematika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-t�tel','Matematika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','K�lt�szet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('K�olaj','F�ldrajz',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szem�lyi jog','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('T�glalap','N�gysz�g',' ');

REM INSERTING into HOME.MODOSITAS
SET
    DEFINE OFF;
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('T�glalap',to_date('22-FEBR. -10','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Filoz�fia',to_date('20-M�RC. -12','RR-MON-DD'),'_galambos_norbi_');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('B�ntet�jog',to_date('20-J�N.  -18','RR-MON-DD'),'marci79');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('K�lt�szet',to_date('21-M�RC. -20','RR-MON-DD'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Hardver',to_date('22-JAN.  -27','RR-MON-DD'),'g_jani__72');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Szociol�gia',to_date('20-J�L.  -15','RR-MON-DD'),'gabi_holi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('�llatteny�szt�s',to_date('22-FEBR. -02','RR-MON-DD'),'eszterrr');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('N�gyzet',to_date('21-AUG.  -13','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Himnusz',to_date('21-DEC.  -09','RR-MON-DD'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('C nyelv',to_date('21-SZEPT.-22','RR-MON-DD'),'g_jani__72');

REM INSERTING into HOME.TEMAKOR
SET
    DEFINE OFF;
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('B�r�s�g','Jog','B�r�s�g',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Filoz�fia','Filoz�fia','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Nyelv�szet','Nyelv�szet','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Szociol�gia','Szociol�gia','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('K�lt�szet','K�lt�szet','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Madarak','�llat','Mad�r',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('B�ntet�jog','Jog','B�ntet�jog',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Alma','N�v�ny','Alma',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Rendszerfejleszt�s','Informatika','Rendszerfejleszt�s',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Macskafajt�k','�llat','Macska',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Hardver','Informatika','Hardver',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Almasav','Term�szettudom�ny','K�mia',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Karl Marx','Filoz�fia','Karl Marx',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Tulajdonn�v','Nyelvtan','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Sz�m�t�g�p-tudom�ny','Informatika','Programoz�s',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Pet�fi S�ndor','K�lt�szet','Pet�fi S�ndor',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('C nyelv','Informatika','Programoz�s',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Macska','�llat','Macska',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('�llatteny�szt�s','Agr�rtudom�ny','�llatteny�szt�s',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Kutya','�llat','Kutya',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('N�gyzet','Matematika','N�gysz�g',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Atomenergia','Term�szettudom�ny','K�mia',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Sakkt�bla f�ldter�let','Agr�rtudom�ny','F�ldm�vel�s',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Gersgorin-t�tel','Matematika','T�tel',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Pitagorasz-t�tel','Matematika','T�tel',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Himnusz','K�lt�szet','Himnusz',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('K�olaj','Term�szettudom�ny','F�ldrajz',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Present Perfect','B�lcs�szettudom�ny','Angol',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('T�glalap','Matematika','N�gysz�g',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Szem�lyi jog','Jog','Szem�lyi jog',' ');

--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "ADMIN_PK" ON "ADMIN" ("FELHASZNALONEV") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index CIKK_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "CIKK_PK" ON "CIKK" ("CIM") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index FELHASZNALO_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "FELHASZNALO_PK" ON "FELHASZNALO" ("FELHASZNALONEV") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index FORRAS_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "FORRAS_PK" ON "FORRAS" ("CIM", "HIVATKOZAS") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index HIBA_BEJELENTES_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "HIBA_BEJELENTES_PK" ON "HIBA_BEJELENTES" ("FELHASZNALONEV", "CIM") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index KULCSSZO_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "KULCSSZO_PK" ON "KULCSSZO" ("CIM", "MEGNEVEZES") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index MODOSITAS_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "MODOSITAS_PK" ON "MODOSITAS" ("CIM", "FELHASZNALONEV") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  DDL for Index TEMAKOR_PK
--------------------------------------------------------
CREATE UNIQUE INDEX "TEMAKOR_PK" ON "TEMAKOR" ("CIM", "NEV") PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USERS";

--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------
ALTER TABLE
  "FELHASZNALO"
ADD
  CONSTRAINT "FELHASZNALO_PK" PRIMARY KEY ("FELHASZNALONEV") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "FELHASZNALO"
MODIFY
  ("SZUL_DATUM" NOT NULL ENABLE);

ALTER TABLE
  "FELHASZNALO"
MODIFY
  ("JELSZO" NOT NULL ENABLE);

ALTER TABLE
  "FELHASZNALO"
MODIFY
  ("EMAIL" NOT NULL ENABLE);

ALTER TABLE
  "FELHASZNALO"
MODIFY
  ("SZERZO_E" NOT NULL ENABLE);

ALTER TABLE
  "FELHASZNALO"
MODIFY
  ("FELHASZNALONEV" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table CIKK
--------------------------------------------------------
ALTER TABLE
  "CIKK"
ADD
  CONSTRAINT "CIKK_PK" PRIMARY KEY ("CIM") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "CIKK"
MODIFY
  ("LETREHOZAS_DATUM" NOT NULL ENABLE);

ALTER TABLE
  "CIKK"
MODIFY
  ("TARTALOM" NOT NULL ENABLE);

ALTER TABLE
  "CIKK"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table MODOSITAS
--------------------------------------------------------
ALTER TABLE
  "MODOSITAS"
ADD
  CONSTRAINT "MODOSITAS_PK" PRIMARY KEY ("CIM", "FELHASZNALONEV") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "MODOSITAS"
MODIFY
  ("FELHASZNALONEV" NOT NULL ENABLE);

ALTER TABLE
  "MODOSITAS"
MODIFY
  ("MIKOR" NOT NULL ENABLE);

ALTER TABLE
  "MODOSITAS"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------
ALTER TABLE
  "ADMIN"
ADD
  CONSTRAINT "ADMIN_PK" PRIMARY KEY ("FELHASZNALONEV") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "ADMIN"
MODIFY
  ("SZAKTERULET" NOT NULL ENABLE);

ALTER TABLE
  "ADMIN"
MODIFY
  ("TUDOMANYOS_FOKOZAT" NOT NULL ENABLE);

ALTER TABLE
  "ADMIN"
MODIFY
  ("INTEZET" NOT NULL ENABLE);

ALTER TABLE
  "ADMIN"
MODIFY
  ("FELHASZNALONEV" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table KULCSSZO
--------------------------------------------------------
ALTER TABLE
  "KULCSSZO"
ADD
  CONSTRAINT "KULCSSZO_PK" PRIMARY KEY ("CIM", "MEGNEVEZES") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "KULCSSZO"
MODIFY
  ("LINK" NOT NULL ENABLE);

ALTER TABLE
  "KULCSSZO"
MODIFY
  ("MEGNEVEZES" NOT NULL ENABLE);

ALTER TABLE
  "KULCSSZO"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table TEMAKOR
--------------------------------------------------------
ALTER TABLE
  "TEMAKOR"
ADD
  CONSTRAINT "TEMAKOR_PK" PRIMARY KEY ("CIM", "NEV") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "TEMAKOR"
MODIFY
  ("TARTALOM" NOT NULL ENABLE);

ALTER TABLE
  "TEMAKOR"
MODIFY
  ("ALTEMAKOR" NOT NULL ENABLE);

ALTER TABLE
  "TEMAKOR"
MODIFY
  ("NEV" NOT NULL ENABLE);

ALTER TABLE
  "TEMAKOR"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------
ALTER TABLE
  "HIBA_BEJELENTES"
ADD
  CONSTRAINT "HIBA_BEJELENTES_PK" PRIMARY KEY ("FELHASZNALONEV", "CIM") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "HIBA_BEJELENTES"
MODIFY
  ("FELHASZNALONEV" NOT NULL ENABLE);

ALTER TABLE
  "HIBA_BEJELENTES"
MODIFY
  ("HIBANEV" NOT NULL ENABLE);

ALTER TABLE
  "HIBA_BEJELENTES"
MODIFY
  ("HIBAJELENTES" NOT NULL ENABLE);

ALTER TABLE
  "HIBA_BEJELENTES"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table FORRAS
--------------------------------------------------------
ALTER TABLE
  "FORRAS"
ADD
  CONSTRAINT "FORRAS_PK" PRIMARY KEY ("CIM", "HIVATKOZAS") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "USERS" ENABLE;

ALTER TABLE
  "FORRAS"
MODIFY
  ("TARTALOM" NOT NULL ENABLE);

ALTER TABLE
  "FORRAS"
MODIFY
  ("HIVATKOZAS" NOT NULL ENABLE);

ALTER TABLE
  "FORRAS"
MODIFY
  ("CIM" NOT NULL ENABLE);

--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------
ALTER TABLE
  "ADMIN"
ADD
  CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("FELHASZNALONEV") REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table FORRAS
--------------------------------------------------------
ALTER TABLE
  "FORRAS"
ADD
  CONSTRAINT "FORRAS_FK1" FOREIGN KEY ("CIM") REFERENCES "CIKK" ("CIM") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------
ALTER TABLE
  "HIBA_BEJELENTES"
ADD
  CONSTRAINT "HIBA_BEJELENTES_FK1" FOREIGN KEY ("CIM") REFERENCES "CIKK" ("CIM") ENABLE;

ALTER TABLE
  "HIBA_BEJELENTES"
ADD
  CONSTRAINT "HIBA_BEJELENTES_FK2" FOREIGN KEY ("FELHASZNALONEV") REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table KULCSSZO
--------------------------------------------------------
ALTER TABLE
  "KULCSSZO"
ADD
  CONSTRAINT "KULCSSZO_FK1" FOREIGN KEY ("CIM") REFERENCES "CIKK" ("CIM") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table MODOSITAS
--------------------------------------------------------
ALTER TABLE
  "MODOSITAS"
ADD
  CONSTRAINT "MODOSITAS_FK1" FOREIGN KEY ("CIM") REFERENCES "CIKK" ("CIM") ENABLE;

ALTER TABLE
  "MODOSITAS"
ADD
  CONSTRAINT "MODOSITAS_FK2" FOREIGN KEY ("FELHASZNALONEV") REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table TEMAKOR
--------------------------------------------------------
ALTER TABLE
  "TEMAKOR"
ADD
  CONSTRAINT "TEMAKOR_FK1" FOREIGN KEY ("CIM") REFERENCES "CIKK" ("CIM") ENABLE;
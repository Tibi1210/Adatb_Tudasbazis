--------------------------------------------------------
--  File created - Thursday-April-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "HOME"."ADMIN" 
   (	"FELHASZNALONEV" VARCHAR2(40 BYTE), 
	"INTEZET" VARCHAR2(60 BYTE), 
	"TUDOMANYOS_FOKOZAT" VARCHAR2(40 BYTE), 
	"SZAKTERULET" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CIKK
--------------------------------------------------------

  CREATE TABLE "HOME"."CIKK" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"TARTALOM" VARCHAR2(300 BYTE), 
	"LETREHOZAS_DATUM" DATE, 
	"SZERZO" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "HOME"."FELHASZNALO" 
   (	"FELHASZNALONEV" VARCHAR2(40 BYTE), 
	"SZERZO_E" CHAR(1 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"JELSZO" VARCHAR2(40 BYTE), 
	"SZUL_DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FORRAS
--------------------------------------------------------

  CREATE TABLE "HOME"."FORRAS" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"HIVATKOZAS" VARCHAR2(100 BYTE), 
	"TARTALOM" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HIBA_BEJELENTES
--------------------------------------------------------

  CREATE TABLE "HOME"."HIBA_BEJELENTES" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"HIBAJELENTES" VARCHAR2(100 BYTE), 
	"HIBANEV" VARCHAR2(20 BYTE), 
	"FELHASZNALONEV" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KULCSSZO
--------------------------------------------------------

  CREATE TABLE "HOME"."KULCSSZO" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"MEGNEVEZES" VARCHAR2(30 BYTE), 
	"LINK" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MODOSITAS
--------------------------------------------------------

  CREATE TABLE "HOME"."MODOSITAS" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"MIKOR" DATE, 
	"FELHASZNALONEV" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEMAKOR
--------------------------------------------------------

  CREATE TABLE "HOME"."TEMAKOR" 
   (	"CIM" VARCHAR2(40 BYTE), 
	"NEV" VARCHAR2(30 BYTE), 
	"ALTEMAKOR" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HOME.ADMIN
SET DEFINE OFF;
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('varga__timi','MTA','PhD','Magyar nyelv es irodalom');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('mesi_kurucz','SZTE TTIK','PhD','Matematika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('elekes_anna','SZTE TTIK','PhD','Termeszettudomanyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('f.imi','ELTE BTK','PhD','Bolcseszettudomanyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('marci79','SZTE aJTK','PhD','Jogtudomanyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('gabi_holi','ELTE TaTK','PhD','Szociologia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('g_jani__72','SZTE TTIK','PhD','Informatika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('eszterrr','MTA','PhD','Agrartudomanyok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('_galambos_norbi_','ELTE BTK','PhD','Filozofia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('-noncsi-','MTA','PhD','Nyelveszet');
REM INSERTING into HOME.CIKK
SET DEFINE OFF;
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Alma','Az alma vagy almafa a rozsafelek csaladjaba tartozo novenynemzetseg. Korulbelul 55 faj tartozik ide, melyek tobsege azsiaban, kisebb resze Europaban es eszak-Amerikaban honos. A nemzetsegbe tartozo egyedek, vagyis az almafak termesenek a neve is alma.',to_date('01-MAR-19','DD-MON-RR'),'_r_n_t__');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szamitogep-tudomany','A szamitogep-programozas egy vagy tobb absztrakt algoritmus megvalositasat jelenti egy bizonyos programozasi nyelven. A programozasban megtalaljuk a muveszet, a tudomany, a matematika es a mernoki tudomany elemeit.',to_date('05-MAR-22','DD-MON-RR'),'g_jani__72');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Rendszerfejlesztes','A rendszerfejlesztest a programozas, szoftverfejlesztes egyik lepesekent kezeli. Eszkoztarat a feladat nagysagatol, celjatol fuggoen hasznaljak fel a programozas soran: szabvanyos modellezo, rendszerfejlesztesi modszertan, projektmenedzsment, alkalmazasfejlesztes stb. ',to_date('16-MAR-19','DD-MON-RR'),'g_jani__72');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macska','A macska, mas neven hazi macska kiseb termetu husevo emlos, amely a ragadozok rendjen belul a macskafelek csaladjanak Felis nemehez es vadmacska fajahoz tartozik. A vadmacska alfaja.',to_date('17-JUL-19','DD-MON-RR'),'_-leo-_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pitagorasz-tetel','A Pitagorasz-tetel az euklideszi geometria egyik alapveto allitasa. Barmely derekszogu haromszog leghosszabb oldalanak (atfogojanak) negyzete megegyezik a masik ket oldal (a befogok) negyzetosszegevel.',to_date('22-JUL-21','DD-MON-RR'),'mesi_kurucz');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Gersgorin-tetel','A linearis algebraban a Gersgorin-tetel azt mondja ki, hogy a komplex test feletti negyzetes matrix sajatertekei a komplex sikon a foatlo elemei koruli ugynevezett Gersgorin-korokon belul talalhatoak. ',to_date('04-MAY-21','DD-MON-RR'),'mesi_kurucz');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Himnusz','A himnusz dicsoito es magasztalo enek. Eredetileg vallasos jellegu, Istent vagy isteni hatalmat dicsoito, hozza segitsegert fohaszkodo, imaszeru lirai mufaj. Targya es alkalma tehat eredetileg valamely istenseg vagy Isten dicserete, megnyerese es magasztalasa.',to_date('10-AUG-21','DD-MON-RR'),'varga__timi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kolteszet','A kolteszet az irodalomnak muveszeti aga. Mint az emberi lelek muveszi tevekenysege, egyreszt a muveszetek koze tartozik, masreszt mint irodalmi munkassag, az ember beszedmuvei koze. Torvenyeit tudomanyos rendszeresseggel a kolteszettan (poetika) targyalja. ',to_date('22-AUG-18','DD-MON-RR'),'evi_nagy');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Nyelveszet','altalanossagban a nyelveszet, latinosan grammatika az emberi nyelvekkel foglalkozo tudomanyag, es nyelvesz az, aki ezt a tudomanyt muveli.',to_date('13-JUN-17','DD-MON-RR'),'-noncsi-');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Filozofia','A filozofia, mint tudomany alapkerdese, hogy mikeppen viszonyul a gondolkodas a lethez, a tudat az anyaghoz. A kulonbozo filozofiai rendszerek tulajdonkeppen mind e problema kifejtesei, megoldasai, meg abban az esetben is, ha az alapkerdest kozvetlenul nem is vetik fel.',to_date('06-MAY-16','DD-MON-RR'),'_galambos_norbi_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Buntetojog','A buntetojog a jog azon aga, amely meghatarozza azokat a kozossegellenes, nemkivanatos magatartasokat, amelyek tanusitasa, es jogellenesseget kizaro tenyezok hianya eseten az elkovetot buntetojogi felelossegre vonjak es amennyiben bunos megbuntetik.',to_date('14-FEB-19','DD-MON-RR'),'marci79');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Birosag','A birosagok az igazsagszolgaltatast gyakorlo, mas hatalmi agaktol fuggetlen, politikailag es vilagnezetileg semleges, onallo hatosagok.A birosagok feladatait a birok es egyeb birosagi alkalmazottak latjak el.',to_date('04-AUG-15','DD-MON-RR'),'marci79');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szociologia','A szociologia a tarsadalmi elet osszetevoi, az egyenek, csoportok, szervezetek, intezmenyek (csalad, iskola, egyhaz, allam stb.) eletenek, mukodesenek torvenyszerusegeit, szabalyait es folyamatait vizsgalo elmeleti es gyakorlati tudomany.',to_date('09-AUG-18','DD-MON-RR'),'gabi_holi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Karl Marx','Karl Marx (Trier, 1818. majus 5. ? London, 1883. marcius 14.) nemet filozofus, kozgazdasz, szociologus, a kommunista munkasmozgalom teoretikusa, egyben a marxizmus ihletoje; munkassaga jelentosen hozzajarult a tarsadalomtudomany fejlodesehez.',to_date('21-NOV-19','DD-MON-RR'),'evi_nagy');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Madarak','A madarak meszes heju tojassal szaporodo, melegveru gerinces allatok. Mellso vegtagjaik szarnyakka modosultak. Jarolabaik vannak , melyeken megtalalhato a csud,amely elosegiti a landolast. Szegycsontjuk tarajos, melyhez eros mellizmok tapadnak, igy segitve a repulest.',to_date('10-OCT-18','DD-MON-RR'),'elekes_anna');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('allattenyesztes','Az allattenyesztes a mezogazdasag egyik fo teruletet kepezo gazdasagi tevekenyseg. A hatalyos magyar torvenyi meghatarozas szerint "Az allatok tenyesz- es haszonerteket novelo celiranyos tevekenysegek osszessege.',to_date('23-SEP-20','DD-MON-RR'),'eszterrr');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Sakktabla foldterulet','A sakktablasodas olyan helyzetre utal, amikor a foldtulajdon ket vagy tobb tulajdonos kozott keveredik, ami sakktablas mintazatot eredmenyez. Mivel a kiosztott foldteruleteket eltero modon es intenzitassal muvelik, a sakktabla-mintazat igy a levegobol is lathato.',to_date('11-MAR-21','DD-MON-RR'),'*armando;)*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a hetkoznapi beszedben gyakran hasznalt igeidoje. Jelentese: present=jelen, perfect=tokeletes, befejezett. osszetett igeido, ket tagbol all: a to have (birtokolni), mint segedige egyszeru jelen idejebol es a foige. ',to_date('06-JAN-22','DD-MON-RR'),'f.imi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('C nyelv','A C egy altalanos celu programozasi nyelv, melyet Dennis Ritchie es fejlesztette ki 1969 es 1973 kozott a UNIX rendszerekre. Idovel joforman minden operacios rendszerre keszitettek C forditoprogramot, es a legnepszerubb programozasi nyelvek egyikeve valt.',to_date('15-JUL-20','DD-MON-RR'),'andikaa_:)_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Koolaj','A koolaj (mas neven asvanyolaj) a Fold szilard kergeben talalhato termeszetes eredetu, elo szervezetek bomlasaval, atalakulasaval keletkezett asvanyi termek. Fo osszetevoi folyekony halmazallapotu szenhidrogenek.',to_date('31-AUG-21','DD-MON-RR'),'_cs_i_p_i_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Atomenergia','Az atomenergia a magreakcio kontrollalt felhasznalasa munka, ho es elektromossag formaju energia letrehozasanak celjabol. Egy iranyitott lancreakcio utan keletkezik es hot hoz letre, amit viz felforralasara, goz eloallitasara, gozturbina meghajtasara hasznalnak.',to_date('05-MAR-21','DD-MON-RR'),'andikaa_:)_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Negyzet','A negyzet egyenlo oldalu teglalap, vagyis olyan sokszog, melynek negy egyenlo oldala es negy egyenlo szoge, megpedig derekszoge van. Terbeli megfeleloje a kocka.',to_date('12-OCT-20','DD-MON-RR'),'_rebi_2003');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Hardver','Hardver a szamitogep fizikailag megfoghato reszeinek osszessege. A szamitogep mukodesehez alapvetoen hardver es szoftver szukseges, a ketto kozotti kapcsolatot a firmware hozza letre, ami a hardverekbe a gyartok altal "beepitett" szoftvernek tekintheto. ',to_date('14-MAY-19','DD-MON-RR'),'*--lina--*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macskafajtak','A macskatenyesztes eredmenyekent a hazi macska szamos fajtajat sikerult kitenyeszteni. Egyes fajtak kialakitasanal a hazi macskat vadon elo macskafajokkal kereszteztek, igy jott letre peldaul a bengali es a szavanna.',to_date('16-MAR-19','DD-MON-RR'),'gizi_deli98');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Almasav','Az almasav savanykas izu, szerves dikarbonsav, ami szamos savanyu etelben megtalalhato. Szintelen kristalyokat alkot. Higroszkopos vegyulet. Jol oldodik vizben es alkoholban. A borostyankosav hidroxiszarmazekanak tekintheto.',to_date('17-JUN-19','DD-MON-RR'),'gizi_deli98');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szemelyi jog','A szemelyi jog a polgari jog viszonylag onallo jogterulete, amely a szemelyi viszonyok, kulonosen a jogalanyisag es a szemelyisegi jogok szabalyozasan keresztul biztositja, vedi a szemelyi autonomiat, a szemelyek onrendelkezesenek, onmegvalositasanak szabadsagat',to_date('16-OCT-21','DD-MON-RR'),'_rebi_2003');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Teglalap','A teglalap egy olyan negyszog, amelynek minden szoge derekszog. Ket-ket szemkozti oldala egyenlo hosszusagu, ezert minden teglalap egyben paralelogramma is. A negyzet a teglalap egy specialis tipusa, amelynek minden oldala egyenlo. A teglalap belso szogeinek osszege 360°.',to_date('13-JAN-22','DD-MON-RR'),'_cs_i_p_i_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Tulajdonnev','A tulajdonnev a fonevek azon fajtaja, amely egy konkret egyedre utal, tehat azonosito funkciot tolt be. Fajtai: szemelynevek, allatnevek, targynevek, foldrajzi nevek, intezmenynevek, markanevek... ',to_date('04-MAR-20','DD-MON-RR'),'*--lina--*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Petofi Sandor','Petofi Sandor (szuletett Petrovics Sandor, Kiskoros, 1823. januar 1. - Feheregyhaza korul, 1849. julius 31.) magyar kolto, forradalmar, nemzeti hos, a magyar kolteszet egyik legismertebb es egyik legkiemelkedobb alakja.',to_date('14-JUL-20','DD-MON-RR'),'varga__timi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kutya','A kutya vagy eb ujjon jaro emlos ragadozo allat, a szurke farkas egy mar kihalt alfajanak haziasitott formaja. Az egyetlen olyan emlos allatfaj, amely tudomanyos neveben megkapta a familiaris, azaz a csaladhoz tartozo jelzot. A kutyakat szokas a tarsallatok soraban emlegetni.',to_date('07-OCT-20','DD-MON-RR'),'evi_nagy');
REM INSERTING into HOME.FELHASZNALO
SET DEFINE OFF;
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('evi_nagy','y','evelinnagy@freemail.hu','56hzf78ki',to_date('13-MAR-92','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('f.imi','y','feketeimre65@gmail.com','j54dt789u',to_date('26-OCT-84','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elekes_anna','y','eanna@gmail.hu','rjfi876hnb',to_date('06-SEP-89','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('hajnus_seres','n','hajniseres@gmail.com','kdtsg436w',to_date('12-AUG-04','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kerekes.zs','n','zsolt88@freemail.hu','jsteg1c357',to_date('16-APR-88','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('marci79','y','marcellkis79@gmail.com','25g4fd57s',to_date('30-NOV-79','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('peti','n','peterhalmos@freemail.hu','hjau5gd3n',to_date('22-JUL-82','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gizi_deli98','y','dgizella@gmail.com','uks68n6g43',to_date('16-JAN-98','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rudolf_','n','baloghrudolf@gmail.com','8jvbg643dl',to_date('05-FEB-76','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('andikaa_:)_','y','bandrea@gmail.com','9kdtg54d21',to_date('24-JUL-99','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_galambos_norbi_','y','gnorbert@freemail.hu','jfhsz765bf',to_date('21-DEC-00','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('lali_nagy','n','nagylajos@gmail.com','arfv4f2fs4',to_date('06-JUN-96','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kevin_1995','n','gkevin1995@gmail.com','9ikhgfs67s',to_date('11-OCT-95','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values (';)_sacika_','n','soossarolta@freemail.hu','5dgftrv4h2',to_date('26-SEP-02','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*--lina--*','y','karolinatoth@gmail.com','9kdifhsn54',to_date('14-FEB-98','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('mesi_kurucz','y','kuruczemese@gmail.com','nspo7h5x8x',to_date('11-AUG-87','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kucsera-adri','n','adriennkucsera@gmail.com','8li84fs3fa',to_date('29-MAY-93','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*petruska*','n','bodapetra@freemail.hu','1da23sksu4',to_date('04-JUL-95','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kiss_bali','n','balazskiss@gmail.com','7a3exoxo5t',to_date('09-OCT-90','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ricsi','n','ricsikocsis@gmail.com','oa8sj5rsha',to_date('01-AUG-02','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rebi_2003','y','rebekakardos@freemail.hu','5s7hd4xgsz',to_date('22-NOV-03','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('roland_halmai','n','halmairoland96@gmail.com','5364gs5sga',to_date('22-SEP-96','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gabi_holi','y','holigabriella@gmail.com','ze5dhf6ess',to_date('27-MAY-82','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('g_jani__72','y','janosgal@gmail.com','ksihdb63sa',to_date('20-JUN-72','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*armando;)*','y','armandtoth@freemail.hu','64rdkdks8q',to_date('24-JUN-92','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gerikeee_','n','gergodobos@gmail.com','sg537rjd6a',to_date('18-DEC-85','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gyuszi','n','gyuladarai@gmail.com','kd64na92ms',to_date('08-SEP-64','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_cs_i_p_i_','y','kiralyildi77@gmail.com','ie6429s721',to_date('28-JUL-77','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('-noncsi-','y','hercegnoemi@gmail.com','52g638dhd5',to_date('31-DEC-99','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ercsi','n','kerierika@freemail.hu','twhs426dgs',to_date('19-JUN-03','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('szilvi82','n','feherszilvia@gmail.com','1za306gsua',to_date('16-AUG-98','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_r_n_t__','y','derrenata@gmail.com','27shd54hsf',to_date('20-FEB-72','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('maci_laci_:)','y','mackolaszlo@gmail.com','ie537qjd62',to_date('25-JUL-63','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('yvette','n','radicsivett5@freemail.hu','725srddxks',to_date('14-NOV-95','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_-leo-_','y','szaboleopold@freemail.hu','j734197sda',to_date('03-MAY-05','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('karcsi*-*','n','vaskaroly@gmail.com','9hs52hej82',to_date('20-SEP-56','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('varga__timi','y','timeavarga@gmail.com','i893s51vax',to_date('22-JUL-76','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('v_kt_r__','n','kelemenviktoria@freemail.hu','714qgd2hxn',to_date('22-JUL-67','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_vendel--','n','vendelszabo@gmail.com','5isd839jsx',to_date('30-SEP-86','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('n_a_t_i','n','nataliaszakali@gmail.com','1zs628csgn',to_date('17-OCT-90','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('o.martin','n','hercegmartin@gmail.com','628sjs6sta',to_date('16-AUG-91','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_kende_02','n','kunkende@freemail.hu','6sh24sdkka',to_date('11-SEP-02','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('levi','n','leventekalmar@gmail.com','qe3s56gsya',to_date('24-MAY-87','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('eszterrr','y','esztervarga@freemail.hu','t37ejsksld',to_date('21-NOV-73','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elek_ferenc','n','elekferenc63@gmail.com','us6a5sjqky',to_date('11-JUL-62','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('__albi__','n','abertfont@gmail.com','tw5nxska4',to_date('27-JUL-82','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('bence<*>','n','tothbence@freemail.hu','jsk5918hss',to_date('17-FEB-83','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_van_dus_','n','deakvanda@gmail.com','7q21tg35s',to_date('20-DEC-86','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('pisti','n','pistihajdrik@gmail.com','ows7kwiw7',to_date('07-JAN-83','DD-MON-RR'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kissferenc','n','kissferenc@gmail.com','nfhhz567e',to_date('19-MAY-72','DD-MON-RR'));
REM INSERTING into HOME.FORRAS
SET DEFINE OFF;
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya','A kutya a farkas egy mara mar kihalt alfajanak haziasitasaval jott letre, amint azt mitokondrialis DNS-adatok is bizonyitjak. A haziasitas kezdetenek idopontjat tudomanyos vitak ovezik, de altalaban 10 000-100 000 evvel ezelottre teszik, azonban a haziasitas kezdeteirol semmilyen dokumentum sem maradt fent, ezert csak feltetelezesekre hagyatkozhatunk.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia','Az energiaellatas napjainkban, s a jovoben is a tarsadalom eletenek, a gazdasag fejlodesenek, s az elheto kornyezet fenntartasanak egyik kritikus eleme lesz. A tudomany szamos megoldast kinal az energiaigenyek kielegitesere, amelyek alkalmazasaval kulonfele strategiak komponalhatok meg.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakktabla foldterulet','https://hu.wikipedia.org/wiki/Sakktabla_(foldterulet)','A sakktabla kialakulasa problemakat okozhat a hozzaferes es az okologiai gazdalkodas szempontjabol. Ez az egyik fo oka a nemzeti erdok hatarain beluli belteruletbe vonasoknak. Ahogyan Kalifornia eszaknyugati reszen is, a sakktablasodas problemakhoz vezetett a nemzeti erdoteruletek kezeleseben.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-tetel','https://hu.wikipedia.org/wiki/Gersgorin-tetel','A tetel tehat azt allitja, hogy a matrix sajatertekei a Gersgorin-korok uniojan belul helyezkednek el. Specialis esetben, ha a matrix diagonalis, akkor a Gersgorin-korok sugara nulla, es a tetel azt az ismert tenyt fejezi ki, hogy a diagonalis matrix sajatertekei eppen a foatlobeli elemei.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-tetel','https://hu.wikipedia.org/wiki/Pitagorasz-tetel','Manapsag talan nincs olyan ember a civilizalt vilagban, aki ne hallott volna a Pitagorasz-tetel nevu osszefuggesrol. Ez olyan alaptetel, amelyet minden iskolas gyereknek meg kell tanulnia. Sot, ez az egyike azon keves matematikai allitasnak, amelyet talan olyanok is viszonylag rendszeresen hasznalnak, akiknek amugy egesz eletukben nem sok kozuk van a matematikahoz.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz','A mufaj eredete ketsegkivul kultikus, kozossegi, vallasos unnepekhez kapcsolodott. Ezert a koltoi formak kozott maig a legszemelytelenebb, a megenekelt targy uralkodik benne, es nem a fohaszkodo szemelye. A hindu Rigvedat, az egyiptomi himnuszokat a kolto egyenisegenek kizarasa jellemzi, a kozosseg imadja bennuk isteneit.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Koolaj','https://hu.wikipedia.org/wiki/Koolaj','A vilagszerte megnovekedett kereslet az energiahordozok irant felerositette a vetelkedest az USA, az EU, Japan kozott. Azonban ezeknek mostanaban mar egy uj ellenfellel kell szembenezniuk, a feltorekvo Kinaval. Kina egyre inkabb azert kuzd, hogy hozzajusson azokhoz az eroforrasokhoz, amelyek kepesek szinten tartani a felszarnyalo gazdasagat.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect','Megjegyzes: A regi angol nyelvben a mozgast kifejezo igek befejezett jelenjet nem a to have, hanem a to be igevel kepeztek. Elvetve ma is elofordul pl. az I have gone helyett az I am gone.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Teglalap','https://hu.wikipedia.org/wiki/Teglalap','A teglalapszamok figuralis mivoltuk miatt a legegyszerubben teglalapokkent abrazolhatoak, ahogyan az abran lathato. Az elso n teglalapszam osszeget meghatarozhatjuk, ha a nagy teglalap teruletebol kivonjuk a nem kello teruleteket.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szamitogep-tudomany','https://hu.wikipedia.org/wiki/Szamitogep-programozas','Programozas olyan, tobb lepesbol allo folyamat, amely soran a programozo a feladat megertesetol eljut a szamitogepen futo program kodolasaig, sot a program dokumentalasaig; a legjellegzetesebb lepesei: specifikalas, algoritmizalas, kodolas, teszteles, hibakereses es -javitas, hatekonysagvizsgalat es -noveles, dokumentalas.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Birosag','https://hu.wikipedia.org/wiki/Magyarorszag_birosagai','Az Orszaggyules a birosagi hataskorok jogallami szintu, hatekony ellatasa, a biroi fuggetlenseg elvenek maradektalan megvalositasa es az itelkezes egysegenek biztositasa erdekeben a birosagok szervezeti felepiteserol, feladatairol es igazgatasarol az Alaptorveny vegrehajtasara.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejlesztes','https://hu.wikipedia.org/wiki/Szamitogep-programozas','A programkeszites menetenek elso lepese a feladat meghatarozasa, preciz "ujrafogalmazasa". Milyen is legyen, mit varjunk el tole? Nezzunk meg nehany - jonak tuno - kovetelmenyt egyelore cimszavakban!');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelveszet','https://hu.wikipedia.org/wiki/Nyelveszet','Ebben a konyvben a nyelv grammatikajat a megszokottol eltero modszerekkel es egy, a korabbi, bevett elmeletektol kulonbozo nyelvtanmodell kereteben mutatom be. A nyelvtanrol ket diszciplina, a nyelveszet es a kognitiv pszichologia hataran mozogva igyekszem majd kepet alkotni.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociologia','https://hu.wikipedia.org/wiki/Szociologia','Az 1968-ban alakitott szerkesztobizottsag intezmenyi hatter nelkul a fent idezett koncepcio alapjan a Venczel Jozsef altal osszeallitott eredeti cimszojegyzeket megprobalta egy lexikontol mufajanal fogva elvarhato adatokkal kitolteni. Az 1970-ben alakult Kriterion Konyvkiado intezmenyi gazdaja lett a tervezett kiadvanynak.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kolteszet','https://hu.wikipedia.org/wiki/Kolteszet','Kolteszet(poezis), az irodalomnak muveszeti aga, a muveszet, melynek kozege az emberi beszed. A K. tehat mint az emberi lelek muveszi tevekenysege, egyreszt a muveszetek koze tartozik, masreszt, mint irodalmi munkassag, az ember beszedmuvei koze, s rea nezve reszint a muveszetek altalanos torvenyei, reszint az irodalmi muvek torvenyei ervenyesek.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak','A vilagon elo mintegy 10000 madarfaj kozul a faj legalabb egy, minden valoszinuseg szerint termeszetes allomanybol szarmazo egyede 1950. januar 1. ota legalabb egyszer hitelesithetoen elofordult Magyarorszag mai hatarain belul. ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Buntetojog','https://hu.wikipedia.org/wiki/Buntetojog','A buncselekmenyt az elkovetese idejen hatalyban levo torveny szerint kell elbiralni. Ha a cselekmeny elbiralasakor hatalyban levo uj bunteto torveny szerint a cselekmeny mar nem buncselekmeny, vagy enyhebben biralando el, akkor az uj torvenyt kell alkalmazni; egyebkent az uj bunteto torvenynek nincs visszahato ereje.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(novenynemzetseg)','Az erdekes termesek tobb szinonimja is elfogadott es hasznalt a botanikaban: pl termescsoportok, tarsas termesek, korikarp termesek, termescsokrok. Egyetlen viragban apokarp termotajbol alakulnak ki (a viragban minden egyes termolevel kulonallo termot alkot.), igy  egy termeskocsanyon tobb termes helyezkedik el.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajtak','https://hu.wikipedia.org/wiki/Macskafajtak_listaja','E torveny celja, hogy elosegitse az allatvilag egyedeinek vedelmet, fokozza az emberek felelossegtudatat az allatokkal valo kimeletes banasmod erdekeben, valamint meghatarozza az allatok vedelmenek alapveto szabalyait.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver','A ''Szamitogepek architekturaja'' c. konyv elsosorban az informatikus szakos foiskolai hallgatok reszere keszult, celja: bevezeto ismereteket adni a szamitogepek felepiteserol, mukodeserol, a nagyobb teljesitmenyu architekturak kialakitasanak alapelveirol olyan szinten, amely elosegiti a kapcsolodo targyak tanulasat, megerteset.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav','A malolaktikus fermentacio folyamataban az almasav a kevesbe savanyu tejsavva alakul. Az almasavat, ha elelmiszer-adalekanyagkent alkalmazzak, E296 E-szammal jelolik. Az almasavat az edesiparban is felhasznaljak, de az almasavtartalmu cukorkak tulzott fogyasztasa szajirritaciot okozhat.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx','Az 1870-es evek vegen Paul Lafargue es Jules Guesde vezette fiatal szocialistak neveztek magukat elsokent marxistaknak. Marx ezt nem vette valami jo neven, mivel nezeteiket sok tekintetben epigonizmus, leegyszerusites, frazispufogtatas, dogmatizmus jellemezte, amit szamos leveleben kritizalt, kigunyolt.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonnev','https://hu.wikipedia.org/wiki/Tulajdonnev','Minthogy a tulajdonnev egyedi letezokre utal, jellemzoen nem kerulhet tobbes szamba. Kivetel ez alol az olyan alak, amelynek eleve tobbes szamu alakja van (pl. Fulop-szigetek). Ezt leszamitva ha egy tulajdonnev tobbes szamba kerul, az gyakran koznevesulesrol arulkodik.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Petofi Sandor','https://hu.wikipedia.org/wiki/Petofi_Sandor','A Petofirol szolo irasok tobbsege masfel evszazada az "oszinteseget", az "egyszeruseget", a "vilagossagat" emeli ki. "oszinte, mert egyszeru es nincs mit elhallgatnia. oszinte, mint ahogy az uveg atlatszo" ? mondta Babits Mihaly is, aki szerint o olyan "tiszta es primitiv tukor", "amelyen nem hagy nyomot a legfeketebb kep sem."');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programozasi_nyelv)','A C tipusos programnyelv. Ez azt jelenti, hogy mielott egy valtozot hasznalni szeretnenk, deklaralnunk kell azt. Figyeljunk arra, hogy a a forditoprogram a valtozonevekben is kulonbseget tesz a kis es a nagy betuk kozott.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska','A legujabb DNS vizsgalat eredmenyei azt mutatjak, hogy a vilag osszes hazimacskaja a kozel-keleti termekeny felhold teruleten elt ot nosteny macskatol szarmazik. A Science cimu tudomanyos lapban publikalt tanulmanyt egy nemzetkozi kutatocsoport keszitette 979 hazimacska es vadmacska genetikai osszetetelenek vizsgalataval.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('allattenyesztes','https://hu.wikipedia.org/wiki/allattenyesztes','A mezogazdasag a nemzetgazdasag azon agazata, amely magaba foglalja a foldmuvelest es az allattenyesztest. A mezogazdasagi termeles folyhat onellato, tokes illetve kollektiv keretek kozott. A mezogazdasagi termekeket onellatasra es eladasra lehet termelni. Elmeleti reszevel a mezogazdasag-tudomany foglalkozik.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Negyzet','https://hu.wikipedia.org/wiki/Negyzet','A koznyelvben a negyzetet is neha kockanak nevezik, de a geometria szigoruan csak a 3 dimenzios testet nevezi kockanak. A matematika mas reszteruletein elofordul, hogy az egyseges kezeles erdekeben kulonbozo dimenzios kockakrol beszelnek.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szemelyi jog','https://hu.wikipedia.org/wiki/Szemelyi_jog','A szemelyi viszonyokat szabalyozo joganyag viszonylag elkulonult resze, jogterulete a polgari jognak. A szemelyi jog mar a 20. szazad elejen kinott a polgari jog altalanos reszebol, onallo jogterulette valt.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filozofia','https://hu.wikipedia.org/wiki/A_filozofia_alapkerdese','Az empiriokriticizmus (gorog nyelvbol: tapasztalatkritika) szubjektiv idealista filozofiai aramlat, amely szerint a megismeres alaptorvenye a gondolkodas okonomiaja, gazdasagossaga.');
REM INSERTING into HOME.HIBA_BEJELENTES
SET DEFINE OFF;
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A szuletesi es halalozasi datum kozott ? van.','eliras','_rudolf_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Teglalap','A 360 utan a fokjel helyett ? van irva.','eliras',';)_sacika_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A tobbsege szo rosszul van irva.','helyesirasi hiba','lali_nagy');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az allatok szo rosszul van irva.','helyesirasi hiba','*petruska*');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb szo rosszul van irva.','helyesirasi hiba','yvette');
REM INSERTING into HOME.KULCSSZO
SET DEFINE OFF;
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Birosag','Jog','https://birosag.hu/birosagokrol/birosagi-szervezet/birosagi-szervezetrendszer');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filozofia','Filozofia','https://zanza.tv/filozofia/filozofia/mi-filozofia');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelveszet','Nyelveszet','https://wikiszotar.hu/ertelmezo-szotar/Nyelv%C3%A9szet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociologia','Szociologia','http://www.szociologia.eu/szociologia-fogalomtar');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kolteszet','Kolteszet','https://wikiszotar.hu/ertelmezo-szotar/K%C3%B6lt%C3%A9szet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Madar','http://madar.szojelentese.com/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Buntetojog','Jog','https://buntetojog.info/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma','https://idegen-szavak-szotara.hu/alma-jelent%C3%A9se');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejlesztes','Informatika','https://hu.wikipedia.org/wiki/Rendszerfejleszt%C3%A9si_%C3%A9letciklus');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajtak','Macska','https://www.zooplus.hu/magazin/macska-magazin/macskafajtak');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika','https://informatika.gtportal.eu/?f0=alapfogalmak_25');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma','https://www.tuja.hu/kerteszeti-lexikon/almasav.html');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filozofia','https://index.hu/tudomany/tortenelem/2018/05/05/marx_200/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonnev','Nyelvtan','https://www.nkp.hu/tankonyv/magyar_nyelv_6_nat2020/lecke_01_008');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szamitogep-tudomany','Informatika','https://wiki.prog.hu/wiki/Mi_az_a_programoz%C3%A1s');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Petofi Sandor','Kolteszet','http://magyar-irodalom.elte.hu/sulinet/igyjo/setup/portrek/petofi/petofi');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika','https://uni-obuda.hu/users/schuster.gyorgy/c.pdf');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska','https://wikiszotar.hu/ertelmezo-szotar/Macska');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('allattenyesztes','Agrar','http://users.atw.hu/torpepinscher/tartas-tenyesztes/tenyesztes-altalanos.php');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya','https://wikiszotar.hu/ertelmezo-szotar/Kutya');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Negyzet','Negyszog','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','Kemia','http://energiapedia.hu/atomenergia-felhasznalasa-atomeromuvek-magyaroszagon-es-a-vilagban');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakktabla foldterulet','Agrar','https://24.hu/kultura/2017/02/08/amerika-erdeiben-bujnak-meg-a-vilag-legnagyobb-sakktablai/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-tetel','Matematika','http://www.inf.u-szeged.hu/~kgelle/sites/default/files/upload/06_sajatertek_gersgorin.pdf');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-tetel','Matematika','https://matekarcok.hu/pitagorasz-tetele/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','Kolteszet','https://zanza.tv/fogalom/himnusz');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Koolaj','Foldrajz','https://xforest.hu/koolaj/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szemelyi jog','Jog','https://ogyei.gov.hu/szemelyi_jog/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan','https://angoltanulas.net/hirek/present-perfect/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Teglalap','Negyszog','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
REM INSERTING into HOME.MODOSITAS
SET DEFINE OFF;
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Teglalap',to_date('10-FEB-22','DD-MON-RR'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Filozofia',to_date('12-MAR-20','DD-MON-RR'),'_galambos_norbi_');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Buntetojog',to_date('18-JUN-20','DD-MON-RR'),'marci79');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Kolteszet',to_date('20-MAR-21','DD-MON-RR'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Hardver',to_date('27-JAN-22','DD-MON-RR'),'g_jani__72');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Szociologia',to_date('15-JUL-20','DD-MON-RR'),'gabi_holi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('allattenyesztes',to_date('02-FEB-22','DD-MON-RR'),'eszterrr');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Negyzet',to_date('13-AUG-21','DD-MON-RR'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Himnusz',to_date('09-DEC-21','DD-MON-RR'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('C nyelv',to_date('22-SEP-21','DD-MON-RR'),'g_jani__72');
REM INSERTING into HOME.TEMAKOR
SET DEFINE OFF;
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Birosag','Jog','Birosag');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Filozofia','Filozofia','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Nyelveszet','Nyelveszet','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szociologia','Szociologia','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kolteszet','Kolteszet','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Madarak','allat','Madar');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Buntetojog','Jog','Buntetojog');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Alma','Noveny','Alma');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Rendszerfejlesztes','Informatika','Rendszerfejlesztes');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macskafajtak','allat','Macska');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Hardver','Informatika','Hardver');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Almasav','Termeszettudomany','Kemia');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Karl Marx','Filozofia','Karl Marx');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Tulajdonnev','Nyelvtan','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szamitogep-tudomany','Informatika','Programozas');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Petofi Sandor','Kolteszet','Petofi Sandor');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('C nyelv','Informatika','Programozas');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macska','allat','Macska');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('allattenyesztes','Agrartudomany','allattenyesztes');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kutya','allat','Kutya');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Negyzet','Matematika','Negyszog');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Atomenergia','Termeszettudomany','Kemia');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Sakktabla foldterulet','Agrartudomany','Foldmuveles');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Gersgorin-tetel','Matematika','Tetel');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pitagorasz-tetel','Matematika','Tetel');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Himnusz','Kolteszet','Himnusz');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Koolaj','Termeszettudomany','Foldrajz');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Present Perfect','Bolcseszettudomany','Angol');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Teglalap','Matematika','Negyszog');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szemelyi jog','Jog','Szemelyi jog');
--------------------------------------------------------
--  DDL for Index FORRAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."FORRAS_PK" ON "HOME"."FORRAS" ("CIM", "HIVATKOZAS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TEMAKOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."TEMAKOR_PK" ON "HOME"."TEMAKOR" ("CIM", "NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."ADMIN_PK" ON "HOME"."ADMIN" ("FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MODOSITAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."MODOSITAS_PK" ON "HOME"."MODOSITAS" ("CIM", "FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CIKK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."CIKK_PK" ON "HOME"."CIKK" ("CIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KULCSSZO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."KULCSSZO_PK" ON "HOME"."KULCSSZO" ("CIM", "MEGNEVEZES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."FELHASZNALO_PK" ON "HOME"."FELHASZNALO" ("FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIBA_BEJELENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."HIBA_BEJELENTES_PK" ON "HOME"."HIBA_BEJELENTES" ("FELHASZNALONEV", "CIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TEMAKOR
--------------------------------------------------------

  ALTER TABLE "HOME"."TEMAKOR" ADD CONSTRAINT "TEMAKOR_PK" PRIMARY KEY ("CIM", "NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."TEMAKOR" MODIFY ("ALTEMAKOR" NOT NULL ENABLE);
  ALTER TABLE "HOME"."TEMAKOR" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "HOME"."TEMAKOR" MODIFY ("CIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FORRAS
--------------------------------------------------------

  ALTER TABLE "HOME"."FORRAS" ADD CONSTRAINT "FORRAS_PK" PRIMARY KEY ("CIM", "HIVATKOZAS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."FORRAS" MODIFY ("TARTALOM" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FORRAS" MODIFY ("HIVATKOZAS" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FORRAS" MODIFY ("CIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "HOME"."MODOSITAS" ADD CONSTRAINT "MODOSITAS_PK" PRIMARY KEY ("CIM", "FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."MODOSITAS" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "HOME"."MODOSITAS" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "HOME"."MODOSITAS" MODIFY ("CIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HOME"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."ADMIN" MODIFY ("SZAKTERULET" NOT NULL ENABLE);
  ALTER TABLE "HOME"."ADMIN" MODIFY ("TUDOMANYOS_FOKOZAT" NOT NULL ENABLE);
  ALTER TABLE "HOME"."ADMIN" MODIFY ("INTEZET" NOT NULL ENABLE);
  ALTER TABLE "HOME"."ADMIN" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "HOME"."KULCSSZO" ADD CONSTRAINT "KULCSSZO_PK" PRIMARY KEY ("CIM", "MEGNEVEZES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."KULCSSZO" MODIFY ("LINK" NOT NULL ENABLE);
  ALTER TABLE "HOME"."KULCSSZO" MODIFY ("MEGNEVEZES" NOT NULL ENABLE);
  ALTER TABLE "HOME"."KULCSSZO" MODIFY ("CIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "HOME"."FELHASZNALO" ADD CONSTRAINT "FELHASZNALO_PK" PRIMARY KEY ("FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."FELHASZNALO" MODIFY ("SZUL_DATUM" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FELHASZNALO" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FELHASZNALO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FELHASZNALO" MODIFY ("SZERZO_E" NOT NULL ENABLE);
  ALTER TABLE "HOME"."FELHASZNALO" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------

  ALTER TABLE "HOME"."HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_PK" PRIMARY KEY ("FELHASZNALONEV", "CIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."HIBA_BEJELENTES" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "HOME"."HIBA_BEJELENTES" MODIFY ("HIBANEV" NOT NULL ENABLE);
  ALTER TABLE "HOME"."HIBA_BEJELENTES" MODIFY ("HIBAJELENTES" NOT NULL ENABLE);
  ALTER TABLE "HOME"."HIBA_BEJELENTES" MODIFY ("CIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "HOME"."CIKK" ADD CONSTRAINT "CIKK_PK" PRIMARY KEY ("CIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HOME"."CIKK" MODIFY ("LETREHOZAS_DATUM" NOT NULL ENABLE);
  ALTER TABLE "HOME"."CIKK" MODIFY ("TARTALOM" NOT NULL ENABLE);
  ALTER TABLE "HOME"."CIKK" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "HOME"."CIKK" MODIFY ("SZERZO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HOME"."ADMIN" ADD CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "HOME"."FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "HOME"."CIKK" ADD CONSTRAINT "CIKK_FK" FOREIGN KEY ("SZERZO")
	  REFERENCES "HOME"."FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FORRAS
--------------------------------------------------------

  ALTER TABLE "HOME"."FORRAS" ADD CONSTRAINT "FORRAS_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "HOME"."CIKK" ("CIM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------

  ALTER TABLE "HOME"."HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "HOME"."CIKK" ("CIM") ENABLE;
  ALTER TABLE "HOME"."HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_FK2" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "HOME"."FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "HOME"."KULCSSZO" ADD CONSTRAINT "KULCSSZO_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "HOME"."CIKK" ("CIM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "HOME"."MODOSITAS" ADD CONSTRAINT "MODOSITAS_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "HOME"."CIKK" ("CIM") ENABLE;
  ALTER TABLE "HOME"."MODOSITAS" ADD CONSTRAINT "MODOSITAS_FK2" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "HOME"."FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEMAKOR
--------------------------------------------------------

  ALTER TABLE "HOME"."TEMAKOR" ADD CONSTRAINT "TEMAKOR_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "HOME"."CIKK" ("CIM") ENABLE;

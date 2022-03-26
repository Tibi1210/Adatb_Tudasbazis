--------------------------------------------------------
--  File created - péntek-március-25-2022   
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
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('varga__timi','MTA','PhD','Magyar nyelv és irodalom');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('mesi_kurucz','SZTE TTIK','PhD','Matematika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('elekes_anna','SZTE TTIK','PhD','Természettudományok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('f.imi','ELTE BTK','PhD','Bölcsészettudományok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('marci79','SZTE ÁJTK','PhD','Jogtudományok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('gabi_holi','ELTE TáTK','PhD','Szociológia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('g_jani__72','SZTE TTIK','PhD','Informatika');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('eszterrr','MTA','PhD','Agrártudományok');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('_galambos_norbi_','ELTE BTK','PhD','Filozófia');
Insert into HOME.ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('-noncsi-','MTA','PhD','Nyelvészet');

REM INSERTING into HOME.CIKK
SET DEFINE OFF;
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Számítógép-tudomány','A számítógép-programozás egy vagy több absztrakt algoritmus megvalósítását jelenti egy bizonyos programozási nyelven. A programozásban megtaláljuk a mûvészet, a tudomány, a matematika és a mérnöki tudomány elemeit.',to_date('20-MÁRC. -05','RR-MON-DD'),'g_jani__72');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Rendszerfejlesztés','A rendszerfejlesztést a programozás, szoftverfejlesztés egyik lépéseként kezeli. Eszköztárát a feladat nagyságától, céljától függõen használják fel a programozás során: szabványos modellezõ, rendszerfejlesztési módszertan, projektmenedzsment, alkalmazásfejlesztés stb. ',to_date('19-MÁRC. -16','RR-MON-DD'),'g_jani__72');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macska','A macska, más néven házi macska kiseb termetû húsevõ emlõs, amely a ragadozók rendjén belül a macskafélék családjának Felis neméhez és vadmacska fajához tartozik. A vadmacska alfaja.',to_date('20-JÚL.  -17','RR-MON-DD'),'_-leo-_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kutya','A kutya vagy eb ujjon járó emlõs ragadozó állat, a szürke farkas egy már kihalt alfajának háziasított formája. Az egyetlen olyan emlõs állatfaj, amely tudományos nevében megkapta a familiaris, azaz a családhoz tartozó jelzõt. A kutyákat szokás a társállatok sorában emlegetni.',to_date('20-OKT.  -07','RR-MON-DD'),'evi_nagy');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pitagorasz-tétel','A Pitagorasz-tétel az euklideszi geometria egyik alapvetõ állítása. Bármely derékszögû háromszög leghosszabb oldalának (átfogójának) négyzete megegyezik a másik két oldal (a befogók) négyzetösszegével.',to_date('21-JÚL.  -22','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Gersgorin-tétel','A lineáris algebrában a Gersgorin-tétel azt mondja ki, hogy a komplex test feletti négyzetes mátrix sajátértékei a komplex síkon a fõátló elemei körüli úgynevezett Gersgorin-körökön belül találhatóak. ',to_date('21-MÁJ.  -04','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Himnusz','A himnusz dicsõítõ és magasztaló ének. Eredetileg vallásos jellegû, Istent vagy isteni hatalmat dicsõítõ, hozzá segítségért fohászkodó, imaszerû lírai mûfaj. Tárgya és alkalma tehát eredetileg valamely istenség vagy Isten dicsérete, megnyerése és magasztalása.',to_date('21-AUG.  -10','RR-MON-DD'),'varga__timi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Költészet','A költészet az irodalomnak mûvészeti ága. Mint az emberi lélek mûvészi tevékenysége, egyrészt a mûvészetek közé tartozik, másrészt mint irodalmi munkásság, az ember beszédmûvei közé. Törvényeit tudományos rendszerességgel a költészettan (poétika) tárgyalja. ',to_date('18-AUG.  -22','RR-MON-DD'),'evi_nagy');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Nyelvészet','Általánosságban a nyelvészet, latinosan grammatika az emberi nyelvekkel foglalkozó tudományág, és nyelvész az, aki ezt a tudományt mûveli.',to_date('17-JÚN.  -13','RR-MON-DD'),'-noncsi-');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Filozófia','A filozófia, mint tudomány alapkérdése, hogy miképpen viszonyul a gondolkodás a léthez, a tudat az anyaghoz. A különbözõ filozófiai rendszerek tulajdonképpen mind e probléma kifejtései, megoldásai, még abban az esetben is, ha az alapkérdést közvetlenül nem is vetik fel.',to_date('16-MÁJ.  -06','RR-MON-DD'),'_galambos_norbi_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Büntetõjog','A büntetõjog a jog azon ága, amely meghatározza azokat a közösségellenes, nemkívánatos magatartásokat, amelyek tanúsítása, és jogellenességet kizáró tényezõk hiánya esetén az elkövetõt büntetõjogi felelõsségre vonják és amennyiben bûnös megbüntetik.',to_date('19-FEBR. -14','RR-MON-DD'),'marci79');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Bíróság','A bíróságok az igazságszolgáltatást gyakorló, más hatalmi ágaktól független, politikailag és világnézetileg semleges, önálló hatóságok.A bíróságok feladatait a bírók és egyéb bírósági alkalmazottak látják el.',to_date('15-AUG.  -04','RR-MON-DD'),'marci79');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szociológia','A szociológia a társadalmi élet összetevõi, az egyének, csoportok, szervezetek, intézmények (család, iskola, egyház, állam stb.) életének, mûködésének törvényszerûségeit, szabályait és folyamatait vizsgáló elméleti és gyakorlati tudomány.',to_date('18-AUG.  -09','RR-MON-DD'),'gabi_holi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Karl Marx','Karl Marx (Trier, 1818. május 5. ? London, 1883. március 14.) német filozófus, közgazdász, szociológus, a kommunista munkásmozgalom teoretikusa, egyben a marxizmus ihletõje; munkássága jelentõsen hozzájárult a társadalomtudomány fejlõdéséhez.',to_date('19-NOV.  -21','RR-MON-DD'),'evi_nagy');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Madarak','A madarak meszes héjú tojással szaporodó, melegvérû gerinces állatok. Mellsõ végtagjaik szárnyakká módosultak. Járólábaik vannak , melyeken megtalálható a csüd,amely elõsegíti a landolást. Szegycsontjuk tarajos, melyhez erõs mellizmok tapadnak, így segítve a repülést.',to_date('18-OKT.  -10','RR-MON-DD'),'elekes_anna');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Állattenyésztés','Az állattenyésztés a mezõgazdaság egyik fõ területét képezõ gazdasági tevékenység. A hatályos magyar törvényi meghatározás szerint "Az állatok tenyész- és haszonértékét növelõ célirányos tevékenységek összessége.',to_date('20-SZEPT.-23','RR-MON-DD'),'eszterrr');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Sakktábla földterület','A sakktáblásodás olyan helyzetre utal, amikor a földtulajdon két vagy több tulajdonos között keveredik, ami sakktáblás mintázatot eredményez. Mivel a kiosztott földterületeket eltérõ módon és intenzitással mûvelik, a sakktábla-mintázat így a levegõbõl is látható.',to_date('21-MÁRC. -11','RR-MON-DD'),'*armando;)*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a hétköznapi beszédben gyakran használt igeidõje. Jelentése: present=jelen, perfect=tökéletes, befejezett. Összetett igeidõ, két tagból áll: a to have (birtokolni), mint segédige egyszerû jelen idejébõl és a fõige. ',to_date('22-JAN.  -06','RR-MON-DD'),'f.imi');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('C nyelv','A C egy általános célú programozási nyelv, melyet Dennis Ritchie és fejlesztette ki 1969 és 1973 között a UNIX rendszerekre. Idõvel jóformán minden operációs rendszerre készítettek C fordítóprogramot, és a legnépszerûbb programozási nyelvek egyikévé vált.',to_date('20-JÚL.  -15','RR-MON-DD'),'andikaa_:)_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kõolaj','A kõolaj (más néven ásványolaj) a Föld szilárd kérgében található természetes eredetû, élõ szervezetek bomlásával, átalakulásával keletkezett ásványi termék. Fõ összetevõi folyékony halmazállapotú szénhidrogének.',to_date('21-AUG.  -31','RR-MON-DD'),'_cs_i_p_i_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Atomenergia','Az atomenergia a magreakció kontrollált felhasználása munka, hõ és elektromosság formájú energia létrehozásának céljából. Egy irányított láncreakció után keletkezik és hõt hoz létre, amit víz felforralására, gõz elõállítására, gõzturbina meghajtására használnak.',to_date('21-MÁRC. -05','RR-MON-DD'),'andikaa_:)_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Négyzet','A négyzet egyenlõ oldalú téglalap, vagyis olyan sokszög, melynek négy egyenlõ oldala és négy egyenlõ szöge, mégpedig derékszöge van. Térbeli megfelelõje a kocka.',to_date('20-OKT.  -12','RR-MON-DD'),'_rebi_2003');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Hardver','Hardver a számítógép fizikailag megfogható részeinek összessége. A számítógép mûködéséhez alapvetõen hardver és szoftver szükséges, a kettõ közötti kapcsolatot a firmware hozza létre, ami a hardverekbe a gyártók által "beépített" szoftvernek tekinthetõ. ',to_date('19-MÁJ.  -14','RR-MON-DD'),'*--lina--*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macskafajták','A macskatenyésztés eredményeként a házi macska számos fajtáját sikerült kitenyészteni. Egyes fajták kialakításánál a házi macskát vadon élõ macskafajokkal keresztezték, így jött létre például a bengáli és a szavanna.',to_date('19-MÁRC. -16','RR-MON-DD'),'gizi_deli98');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Alma','Az alma vagy almafa a rózsafélék családjába tartozó növénynemzetség. Körülbelül 55 faj tartozik ide, melyek töbsége Ázsiában, kisebb része Európában és Észak-Amerikában honos. A nemzetségbe tartozó egyedek, vagyis az almafák termésének a neve is alma.',to_date('19-MÁRC. -01','RR-MON-DD'),'_r_n_t__');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Almasav','Az almasav savanykás ízû, szerves dikarbonsav, ami számos savanyú ételben megtalálható. Színtelen kristályokat alkot. Higroszkópos vegyület. Jól oldódik vízben és alkoholban. A borostyánkõsav hidroxiszármazékának tekinthetõ.',to_date('19-JÚN.  -17','RR-MON-DD'),'gizi_deli98');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Személyi jog','A személyi jog a polgári jog viszonylag önálló jogterülete, amely a személyi viszonyok, különösen a jogalanyiság és a személyiségi jogok szabályozásán keresztül biztosítja, védi a személyi autonómiát, a személyek önrendelkezésének, önmegvalósításának szabadságát',to_date('21-OKT.  -16','RR-MON-DD'),'_rebi_2003');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Téglalap','A téglalap egy olyan négyszög, amelynek minden szöge derékszög. Két-két szemközti oldala egyenlõ hosszúságú, ezért minden téglalap egyben paralelogramma is. A négyzet a téglalap egy speciális típusa, amelynek minden oldala egyenlõ. A téglalap belsõ szögeinek összege 360°.',to_date('22-JAN.  -13','RR-MON-DD'),'_cs_i_p_i_');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Tulajdonnév','A tulajdonnév a fõnevek azon fajtája, amely egy konkrét egyedre utal, tehát azonosító funkciót tölt be. Fajtái: személynevek, állatnevek, tárgynevek, földrajzi nevek, intézménynevek, márkanevek... ',to_date('20-MÁRC. -04','RR-MON-DD'),'*--lina--*');
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Petõfi Sándor','Petõfi Sándor (született Petrovics Sándor, Kiskõrös, 1823. január 1. - Fehéregyháza körül, 1849. július 31.) magyar költõ, forradalmár, nemzeti hõs, a magyar költészet egyik legismertebb és egyik legkiemelkedõbb alakja.',to_date('20-JÚL.  -14','RR-MON-DD'),'varga__timi');

REM INSERTING into HOME.FELHASZNALO
SET DEFINE OFF;
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kissferenc','n','kissferenc@gmail.com','nfhhz567e',to_date('72-MÁJ.  -19','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('evi_nagy','y','evelinnagy@freemail.hu','56hzf78ki',to_date('92-MÁRC. -13','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('f.imi','y','feketeimre65@gmail.com','j54dt789u',to_date('84-OKT.  -26','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elekes_anna','y','eanna@gmail.hu','rjfi876hnb',to_date('89-SZEPT.-06','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('hajnus_seres','n','hajniseres@gmail.com','kdtsg436w',to_date('04-AUG.  -12','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kerekes.zs','n','zsolt88@freemail.hu','jsteg1c357',to_date('88-ÁPR.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('marci79','y','marcellkis79@gmail.com','25g4fd57s',to_date('79-NOV.  -30','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('peti','n','peterhalmos@freemail.hu','hjau5gd3n',to_date('82-JÚL.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gizi_deli98','y','dgizella@gmail.com','uks68n6g43',to_date('98-JAN.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rudolf_','n','baloghrudolf@gmail.com','8jvbg643dl',to_date('76-FEBR. -05','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('andikaa_:)_','y','bandrea@gmail.com','9kdtg54d21',to_date('99-JÚL.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_galambos_norbi_','y','gnorbert@freemail.hu','jfhsz765bf',to_date('00-DEC.  -21','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('lali_nagy','n','nagylajos@gmail.com','arfv4f2fs4',to_date('96-JÚN.  -06','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kevin_1995','n','gkevin1995@gmail.com','9ikhgfs67s',to_date('95-OKT.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values (';)_sacika_','n','soossarolta@freemail.hu','5dgftrv4h2',to_date('02-SZEPT.-26','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*--lina--*','y','karolinatoth@gmail.com','9kdifhsn54',to_date('98-FEBR. -14','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('mesi_kurucz','y','kuruczemese@gmail.com','nspo7h5x8x',to_date('87-AUG.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kucsera-adri','n','adriennkucsera@gmail.com','8li84fs3fa',to_date('93-MÁJ.  -29','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*petruska*','n','bodapetra@freemail.hu','1da23sksu4',to_date('95-JÚL.  -04','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kiss_bali','n','balazskiss@gmail.com','7a3exoxo5t',to_date('90-OKT.  -09','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ricsi','n','ricsikocsis@gmail.com','oa8sj5rsha',to_date('02-AUG.  -01','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rebi_2003','y','rebekakardos@freemail.hu','5s7hd4xgsz',to_date('03-NOV.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('roland_halmai','n','halmairoland96@gmail.com','5364gs5sga',to_date('96-SZEPT.-22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gabi_holi','y','holigabriella@gmail.com','ze5dhf6ess',to_date('82-MÁJ.  -27','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('g_jani__72','y','janosgal@gmail.com','ksihdb63sa',to_date('72-JÚN.  -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*armando;)*','y','armandtoth@freemail.hu','64rdkdks8q',to_date('92-JÚN.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gerikeee_','n','gergodobos@gmail.com','sg537rjd6a',to_date('85-DEC.  -18','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gyuszi','n','gyuladarai@gmail.com','kd64na92ms',to_date('64-SZEPT.-08','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_cs_i_p_i_','y','kiralyildi77@gmail.com','ie6429s721',to_date('77-JÚL.  -28','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('-noncsi-','y','hercegnoemi@gmail.com','52g638dhd5',to_date('99-DEC.  -31','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ercsi','n','kerierika@freemail.hu','twhs426dgs',to_date('03-JÚN.  -19','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('szilvi82','n','feherszilvia@gmail.com','1za306gsua',to_date('98-AUG.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_r_n_t__','y','derrenata@gmail.com','27shd54hsf',to_date('72-FEBR. -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('maci_laci_:)','y','mackolaszlo@gmail.com','ie537qjd62',to_date('63-JÚL.  -25','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('yvette','n','radicsivett5@freemail.hu','725srddxks',to_date('95-NOV.  -14','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_-leo-_','y','szaboleopold@freemail.hu','j734197sda',to_date('05-MÁJ.  -03','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('karcsi*-*','n','vaskaroly@gmail.com','9hs52hej82',to_date('56-SZEPT.-20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('varga__timi','y','timeavarga@gmail.com','i893s51vax',to_date('76-JÚL.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('v_kt_r__','n','kelemenviktoria@freemail.hu','714qgd2hxn',to_date('67-JÚL.  -22','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_vendel--','n','vendelszabo@gmail.com','5isd839jsx',to_date('86-SZEPT.-30','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('n_a_t_i','n','nataliaszakali@gmail.com','1zs628csgn',to_date('90-OKT.  -17','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('o.martin','n','hercegmartin@gmail.com','628sjs6sta',to_date('91-AUG.  -16','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_kende_02','n','kunkende@freemail.hu','6sh24sdkka',to_date('02-SZEPT.-11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('levi','n','leventekalmar@gmail.com','qe3s56gsya',to_date('87-MÁJ.  -24','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('eszterrr','y','esztervarga@freemail.hu','t37ejsksld',to_date('73-NOV.  -21','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elek_ferenc','n','elekferenc63@gmail.com','us6a5sjqky',to_date('62-JÚL.  -11','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('__albi__','n','abertfont@gmail.com','tw5nxska4',to_date('82-JÚL.  -27','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('bence<*>','n','tothbence@freemail.hu','jsk5918hss',to_date('83-FEBR. -17','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_van_dus_','n','deakvanda@gmail.com','7q21tg35s',to_date('86-DEC.  -20','RR-MON-DD'));
Insert into HOME.FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('pisti','n','pistihajdrik@gmail.com','ows7kwiw7',to_date('83-JAN.  -07','RR-MON-DD'));

REM INSERTING into HOME.FORRAS
SET DEFINE OFF;
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya', 'A kutya a farkas egy mára már kihalt alfajának háziasításával jött létre, amint azt mitokondriális DNS-adatok is bizonyítják. A háziasítás kezdetének idõpontját tudományos viták övezik, de általában 10 000-100 000 évvel ezelõttre teszik, azonban a háziasítás kezdeteirõl semmilyen dokumentum sem maradt fent, ezért csak feltételezésekre hagyatkozhatunk.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia', 'Az energiaellátás napjainkban, s a jövõben is a társadalom életének, a gazdaság fejlõdésének, s az élhetõ környezet fenntartásának egyik kritikus eleme lesz. A tudomány számos megoldást kínál az energiaigények kielégítésére, amelyek alkalmazásával különféle stratégiák komponálhatók meg.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakktábla földterület','https://hu.wikipedia.org/wiki/Sakktábla_(földterület)', 'A sakktábla kialakulása problémákat okozhat a hozzáférés és az ökológiai gazdálkodás szempontjából. Ez az egyik fõ oka a nemzeti erdõk határain belüli belterületbe vonásoknak. Ahogyan Kalifornia északnyugati részén is, a sakktáblásodás problémákhoz vezetett a nemzeti erdõterületek kezelésében.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-tétel','https://hu.wikipedia.org/wiki/Gersgorin-tétel', 'A tétel tehát azt állítja, hogy a mátrix sajátértékei a Gersgorin-körök unióján belül helyezkednek el. Speciális esetben, ha a mátrix diagonális, akkor a Gersgorin-körök sugara nulla, és a tétel azt az ismert tényt fejezi ki, hogy a diagonális mátrix sajátértékei éppen a fõátlóbeli elemei.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-tétel','https://hu.wikipedia.org/wiki/Pitagorasz-tétel', 'Manapság talán nincs olyan ember a civilizált világban, aki ne hallott volna a Pitagorasz-tétel nevû összefüggésrõl. Ez olyan alaptétel, amelyet minden iskolás gyereknek meg kell tanulnia. Sõt, ez az egyike azon kevés matematikai állításnak, amelyet talán olyanok is viszonylag rendszeresen használnak, akiknek amúgy egész életükben nem sok közük van a matematikához.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz', 'A mûfaj eredete kétségkívül kultikus, közösségi, vallásos ünnepekhez kapcsolódott. Ezért a költõi formák között máig a legszemélytelenebb, a megénekelt tárgy uralkodik benne, és nem a fohászkodó személye. A hindu Rigvédát, az egyiptomi himnuszokat a költõ egyéniségének kizárása jellemzi, a közösség imádja bennük isteneit.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kõolaj','https://hu.wikipedia.org/wiki/Kõolaj', 'A világszerte megnövekedett kereslet az energiahordozók iránt felerõsítette a vetélkedést az USA, az EU, Japán között. Azonban ezeknek mostanában már egy új ellenféllel kell szembenézniük, a feltörekvõ Kínával. Kína egyre inkább azért küzd, hogy hozzájusson azokhoz az erõforrásokhoz, amelyek képesek szinten tartani a felszárnyaló gazdaságát.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect', 'Megjegyzés: A régi angol nyelvben a mozgást kifejezõ igék befejezett jelenjét nem a to have, hanem a to be igével képezték. Elvétve ma is elõfordul pl. az I have gone helyett az I am gone.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Téglalap','https://hu.wikipedia.org/wiki/Téglalap', 'A téglalapszámok figurális mivoltuk miatt a legegyszerûbben téglalapokként ábrázolhatóak, ahogyan az ábrán látható. Az elsõ n téglalapszám összegét meghatározhatjuk, ha a nagy téglalap területébõl kivonjuk a nem kellõ területeket.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Számítógép-tudomány','https://hu.wikipedia.org/wiki/Számítógép-programozás', 'Programozás olyan, több lépésbõl álló folyamat, amely során a programozó a feladat megértésétõl eljut a számítógépen futó program kódolásáig, sõt a program dokumentálásáig; a legjellegzetesebb lépései: specifikálás, algoritmizálás, kódolás, tesztelés, hibakeresés és -javítás, hatékonyságvizsgálat és -növelés, dokumentálás.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Bíróság','https://hu.wikipedia.org/wiki/Magyarország_bíróságai', 'Az Országgyûlés a bírósági hatáskörök jogállami szintû, hatékony ellátása, a bírói függetlenség elvének maradéktalan megvalósítása és az ítélkezés egységének biztosítása érdekében a bíróságok szervezeti felépítésérõl, feladatairól és igazgatásáról az Alaptörvény végrehajtására.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejlesztés','https://hu.wikipedia.org/wiki/Számítógép-programozás', 'A programkészítés menetének elsõ lépése a feladat meghatározása, precíz "újrafogalmazása". Milyen is legyen, mit várjunk el tõle? Nézzünk meg néhány - jónak tûnõ - követelményt egyelõre címszavakban!');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelvészet','https://hu.wikipedia.org/wiki/Nyelvészet', 'Ebben a könyvben a nyelv grammatikáját a megszokottól eltérõ módszerekkel és egy, a korábbi, bevett elméletektõl különbözõ nyelvtanmodell keretében mutatom be. A nyelvtanról két diszciplína, a nyelvészet és a kognitív pszichológia határán mozogva igyekszem majd képet alkotni.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociológia','https://hu.wikipedia.org/wiki/Szociológia', 'Az 1968-ban alakított szerkesztõbizottság intézményi háttér nélkül a fent idézett koncepció alapján a Venczel József által összeállított eredeti címszójegyzéket megpróbálta egy lexikontól mûfajánál fogva elvárható adatokkal kitölteni. Az 1970-ben alakult Kriterion Könyvkiadó intézményi gazdája lett a tervezett kiadványnak.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Költészet','https://hu.wikipedia.org/wiki/Költészet', 'Költészet(poézis), az irodalomnak mûvészeti ága, a mûvészet, melynek közege az emberi beszéd. A K. tehát mint az emberi lélek mûvészi tevékenysége, egyrészt a mûvészetek közé tartozik, másrészt, mint irodalmi munkásság, az ember beszédmûvei közé, s reá nézve részint a mûvészetek általános törvényei, részint az irodalmi mûvek törvényei érvényesek.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak', 'A világon élõ mintegy 10000 madárfaj közül a faj legalább egy, minden valószínûség szerint természetes állományból származó egyede 1950. január 1. óta legalább egyszer hitelesíthetõen elõfordult Magyarország mai határain belül. ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Büntetõjog','https://hu.wikipedia.org/wiki/Büntetõjog', 'A bûncselekményt az elkövetése idején hatályban levõ törvény szerint kell elbírálni. Ha a cselekmény elbírálásakor hatályban levõ új büntetõ törvény szerint a cselekmény már nem bûncselekmény, vagy enyhébben bírálandó el, akkor az új törvényt kell alkalmazni; egyébként az új büntetõ törvénynek nincs visszaható ereje.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(növénynemzetség)', 'Az érdekes termések több szinonímja is elfogadott és használt a botanikában: pl terméscsoportok, társas termések, korikarp termések, terméscsokrok. Egyetlen virágban apokarp termõtájból alakulnak ki (a virágban minden egyes termõlevél különálló termõt alkot.), így  egy terméskocsányon több termés helyezkedik el.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajták','https://hu.wikipedia.org/wiki/Macskafajták_listája', 'E törvény célja, hogy elõsegítse az állatvilág egyedeinek védelmét, fokozza az emberek felelõsségtudatát az állatokkal való kíméletes bánásmód érdekében, valamint meghatározza az állatok védelmének alapvetõ szabályait.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver', 'A ''Számítógépek architektúrája'' c. könyv elsõsorban az informatikus szakos fõiskolai hallgatók részére készült, célja: bevezetõ ismereteket adni a számítógépek felépítésérõl, mûködésérõl, a nagyobb teljesítményû architektúrák kialakításának alapelveirõl olyan szinten, amely elõsegíti a kapcsolódó tárgyak tanulását, megértését.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav', 'A malolaktikus fermentáció folyamatában az almasav a kevésbé savanyú tejsavvá alakul. Az almasavat, ha élelmiszer-adalékanyagként alkalmazzák, E296 E-számmal jelölik. Az almasavat az édesiparban is felhasználják, de az almasavtartalmú cukorkák túlzott fogyasztása szájirritációt okozhat.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx', 'Az 1870-es évek végén Paul Lafargue és Jules Guesde vezette fiatal szocialisták nevezték magukat elsõként marxistáknak. Marx ezt nem vette valami jó néven, mivel nézeteiket sok tekintetben epigonizmus, leegyszerûsítés, frázispufogtatás, dogmatizmus jellemezte, amit számos levelében kritizált, kigúnyolt.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonnév','https://hu.wikipedia.org/wiki/Tulajdonnév', 'Minthogy a tulajdonnév egyedi létezõkre utal, jellemzõen nem kerülhet többes számba. Kivétel ez alól az olyan alak, amelynek eleve többes számú alakja van (pl. Fülöp-szigetek). Ezt leszámítva ha egy tulajdonnév többes számba kerül, az gyakran köznevesülésrõl árulkodik.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Petõfi Sándor','https://hu.wikipedia.org/wiki/Petõfi_Sándor', 'A Petõfirõl szóló írások többsége másfél évszázada az "õszinteségét", az "egyszerûségét", a "világosságát" emeli ki. "Õszinte, mert egyszerû és nincs mit elhallgatnia. Õszinte, mint ahogy az üveg átlátszó" ? mondta Babits Mihály is, aki szerint õ olyan "tiszta és primitív tükör", "amelyen nem hagy nyomot a legfeketébb kép sem."');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programozási_nyelv)', 'A C típusos programnyelv. Ez azt jelenti, hogy mielõtt egy változót használni szeretnénk, deklarálnunk kell azt. Figyeljünk arra, hogy a a fordítóprogram a változónevekben is különbséget tesz a kis és a nagy betûk között.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska', 'A legújabb DNS vizsgálat eredményei azt mutatják, hogy a világ összes házimacskája a közel-keleti termékeny félhold területén élt öt nõstény macskától származik. A Science címû tudományos lapban publikált tanulmányt egy nemzetközi kutatócsoport készítette 979 házimacska és vadmacska genetikai összetételének vizsgálatával.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Állattenyésztés','https://hu.wikipedia.org/wiki/Állattenyésztés', 'A mezõgazdaság a nemzetgazdaság azon ágazata, amely magába foglalja a földmûvelést és az állattenyésztést. A mezõgazdasági termelés folyhat önellátó, tõkés illetve kollektív keretek között. A mezõgazdasági termékeket önellátásra és eladásra lehet termelni. Elméleti részével a mezõgazdaság-tudomány foglalkozik.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Négyzet','https://hu.wikipedia.org/wiki/Négyzet', 'A köznyelvben a négyzetet is néha kockának nevezik, de a geometria szigorúan csak a 3 dimenziós testet nevezi kockának. A matematika más részterületein elõfordul, hogy az egységes kezelés érdekében különbözõ dimenziós kockákról beszélnek.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Személyi jog','https://hu.wikipedia.org/wiki/Személyi_jog', 'A személyi viszonyokat szabályozó joganyag viszonylag elkülönült része, jogterülete a polgári jognak. A személyi jog már a 20. század elején kinõtt a polgári jog általános részébõl, önálló jogterületté vált.');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filozófia','https://hu.wikipedia.org/wiki/A_filozófia_alapkérdése', 'Az empiriokriticizmus (görög nyelvbõl: tapasztalatkritika) szubjektív idealista filozófiai áramlat, amely szerint a megismerés alaptörvénye a gondolkodás ökonomiája, gazdaságossága.');

REM INSERTING into HOME.HIBA_BEJELENTES
SET DEFINE OFF;
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A születési és halálozási dátum között ? van.','elírás','_rudolf_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Téglalap','A 360 után a fokjel helyett ? van írva.','elírás',';)_sacika_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A többsége szó rosszul van írva.','helyesírási hiba','lali_nagy');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az állatok szó rosszul van írva.','helyesírási hiba','*petruska*');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb szó rosszul van írva.','helyesírási hiba','yvette');

REM INSERTING into HOME.KULCSSZO
SET DEFINE OFF;
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Bíróság','Jog','https://birosag.hu/birosagokrol/birosagi-szervezet/birosagi-szervezetrendszer');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filozófia','Filozófia','https://zanza.tv/filozofia/filozofia/mi-filozofia');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelvészet','Nyelvészet','https://wikiszotar.hu/ertelmezo-szotar/Nyelv%C3%A9szet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociológia','Szociológia','http://www.szociologia.eu/szociologia-fogalomtar');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Költészet','Költészet','https://wikiszotar.hu/ertelmezo-szotar/K%C3%B6lt%C3%A9szet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Madár','http://madar.szojelentese.com/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Büntetõjog','Jog','https://buntetojog.info/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma','https://idegen-szavak-szotara.hu/alma-jelent%C3%A9se');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejlesztés','Informatika','https://hu.wikipedia.org/wiki/Rendszerfejleszt%C3%A9si_%C3%A9letciklus');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajták','Macska','https://www.zooplus.hu/magazin/macska-magazin/macskafajtak');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika','https://informatika.gtportal.eu/?f0=alapfogalmak_25');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma','https://www.tuja.hu/kerteszeti-lexikon/almasav.html');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filozófia','https://index.hu/tudomany/tortenelem/2018/05/05/marx_200/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonnév','Nyelvtan','https://www.nkp.hu/tankonyv/magyar_nyelv_6_nat2020/lecke_01_008');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Számítógép-tudomány','Informatika','https://wiki.prog.hu/wiki/Mi_az_a_programoz%C3%A1s');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Petõfi Sándor','Költészet','http://magyar-irodalom.elte.hu/sulinet/igyjo/setup/portrek/petofi/petofi');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika','https://uni-obuda.hu/users/schuster.gyorgy/c.pdf');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska','https://wikiszotar.hu/ertelmezo-szotar/Macska');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Állattenyésztés','Agrár','http://users.atw.hu/torpepinscher/tartas-tenyesztes/tenyesztes-altalanos.php');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya','https://wikiszotar.hu/ertelmezo-szotar/Kutya');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Négyzet','Négyszög','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','Kémia','http://energiapedia.hu/atomenergia-felhasznalasa-atomeromuvek-magyaroszagon-es-a-vilagban');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakktábla földterület','Agrár','https://24.hu/kultura/2017/02/08/amerika-erdeiben-bujnak-meg-a-vilag-legnagyobb-sakktablai/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-tétel','Matematika','http://www.inf.u-szeged.hu/~kgelle/sites/default/files/upload/06_sajatertek_gersgorin.pdf');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-tétel','Matematika','https://matekarcok.hu/pitagorasz-tetele/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','Költészet','https://zanza.tv/fogalom/himnusz');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kõolaj','Földrajz','https://xforest.hu/koolaj/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Személyi jog','Jog','https://ogyei.gov.hu/szemelyi_jog/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan','https://angoltanulas.net/hirek/present-perfect/');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Téglalap','Négyszög','https://www.amatematika.hu/a_teglalap_es_a_negyzet');

REM INSERTING into HOME.MODOSITAS
SET DEFINE OFF;
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Téglalap',to_date('22-FEBR. -10','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Filozófia',to_date('20-MÁRC. -12','RR-MON-DD'),'_galambos_norbi_');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Büntetõjog',to_date('20-JÚN.  -18','RR-MON-DD'),'marci79');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Költészet',to_date('21-MÁRC. -20','RR-MON-DD'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Hardver',to_date('22-JAN.  -27','RR-MON-DD'),'g_jani__72');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Szociológia',to_date('20-JÚL.  -15','RR-MON-DD'),'gabi_holi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Állattenyésztés',to_date('22-FEBR. -02','RR-MON-DD'),'eszterrr');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Négyzet',to_date('21-AUG.  -13','RR-MON-DD'),'mesi_kurucz');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Himnusz',to_date('21-DEC.  -09','RR-MON-DD'),'varga__timi');
Insert into HOME.MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('C nyelv',to_date('21-SZEPT.-22','RR-MON-DD'),'g_jani__72');

REM INSERTING into HOME.TEMAKOR
SET DEFINE OFF;
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Bíróság','Jog','Bíróság');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Filozófia','Filozófia','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Nyelvészet','Nyelvészet','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szociológia','Szociológia','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Költészet','Költészet','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Madarak','Állat','Madár');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Büntetõjog','Jog','Büntetõjog');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Alma','Növény','Alma');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Rendszerfejlesztés','Informatika','Rendszerfejlesztés');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macskafajták','Állat','Macska');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Hardver','Informatika','Hardver');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Almasav','Természettudomány','Kémia');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Karl Marx','Filozófia','Karl Marx');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Tulajdonnév','Nyelvtan','Fogalom');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Számítógép-tudomány','Informatika','Programozás');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Petõfi Sándor','Költészet','Petõfi Sándor');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('C nyelv','Informatika','Programozás');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macska','Állat','Macska');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Állattenyésztés','Agrártudomány','Állattenyésztés');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kutya','Állat','Kutya');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Négyzet','Matematika','Négyszög');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Atomenergia','Természettudomány','Kémia');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Sakktábla földterület','Agrártudomány','Földmûvelés');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Gersgorin-tétel','Matematika','Tétel');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pitagorasz-tétel','Matematika','Tétel');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Himnusz','Költészet','Himnusz');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kõolaj','Természettudomány','Földrajz');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Present Perfect','Bölcsészettudomány','Angol');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Téglalap','Matematika','Négyszög');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Személyi jog','Jog','Személyi jog');

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
--  DDL for Index CIKK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."CIKK_PK" ON "HOME"."CIKK" ("CIM") 
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
--  DDL for Index FORRAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."FORRAS_PK" ON "HOME"."FORRAS" ("CIM", "HIVATKOZAS") 
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
--  DDL for Index KULCSSZO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."KULCSSZO_PK" ON "HOME"."KULCSSZO" ("CIM", "MEGNEVEZES") 
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
--  DDL for Index TEMAKOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOME"."TEMAKOR_PK" ON "HOME"."TEMAKOR" ("CIM", "NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HOME"."ADMIN" ADD CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("FELHASZNALONEV")
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
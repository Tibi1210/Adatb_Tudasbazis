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
SET
    DEFINE OFF;
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Számítógép-tudomány','A számítógép-programozás egy vagy több absztrakt algoritmus megvalósítását jelenti egy bizonyos programozási nyelven. A programozásban megtaláljuk a mûvészet, a tudomány, a matematika és a mérnöki tudomány elemeit.',to_date('20-MÁRC. -05','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Rendszerfejlesztés','A rendszerfejlesztést a programozás, szoftverfejlesztés egyik lépéseként kezeli. Eszköztárát a feladat nagyságától, céljától függõen használják fel a programozás során: szabványos modellezõ, rendszerfejlesztési módszertan, projektmenedzsment, alkalmazásfejlesztés stb. ',to_date('19-MÁRC. -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Macska','A macska, más néven házi macska kiseb termetû húsevõ emlõs, amely a ragadozók rendjén belül a macskafélék családjának Felis neméhez és vadmacska fajához tartozik. A vadmacska alfaja.',to_date('20-JÚL.  -17','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Kutya','A kutya vagy eb ujjon járó emlõs ragadozó állat, a szürke farkas egy már kihalt alfajának háziasított formája. Az egyetlen olyan emlõs állatfaj, amely tudományos nevében megkapta a familiaris, azaz a családhoz tartozó jelzõt. A kutyákat szokás a társállatok sorában emlegetni.',to_date('20-OKT.  -07','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Pitagorasz-tétel','A Pitagorasz-tétel az euklideszi geometria egyik alapvetõ állítása. Bármely derékszögû háromszög leghosszabb oldalának (átfogójának) négyzete megegyezik a másik két oldal (a befogók) négyzetösszegével.',to_date('21-JÚL.  -22','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Gersgorin-tétel','A lineáris algebrában a Gersgorin-tétel azt mondja ki, hogy a komplex test feletti négyzetes mátrix sajátértékei a komplex síkon a fõátló elemei körüli úgynevezett Gersgorin-körökön belül találhatóak. ',to_date('21-MÁJ.  -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Himnusz','A himnusz dicsõítõ és magasztaló ének. Eredetileg vallásos jellegû, Istent vagy isteni hatalmat dicsõítõ, hozzá segítségért fohászkodó, imaszerû lírai mûfaj. Tárgya és alkalma tehát eredetileg valamely istenség vagy Isten dicsérete, megnyerése és magasztalása.',to_date('21-AUG.  -10','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Költészet','A költészet az irodalomnak mûvészeti ága. Mint az emberi lélek mûvészi tevékenysége, egyrészt a mûvészetek közé tartozik, másrészt mint irodalmi munkásság, az ember beszédmûvei közé. Törvényeit tudományos rendszerességgel a költészettan (poétika) tárgyalja. ',to_date('18-AUG.  -22','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Nyelvészet','Általánosságban a nyelvészet, latinosan grammatika az emberi nyelvekkel foglalkozó tudományág, és nyelvész az, aki ezt a tudományt mûveli.',to_date('17-JÚN.  -13','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Filozófia','A filozófia, mint tudomány alapkérdése, hogy miképpen viszonyul a gondolkodás a léthez, a tudat az anyaghoz. A különbözõ filozófiai rendszerek tulajdonképpen mind e probléma kifejtései, megoldásai, még abban az esetben is, ha az alapkérdést közvetlenül nem is vetik fel.',to_date('16-MÁJ.  -06','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Büntetõjog','A büntetõjog a jog azon ága, amely meghatározza azokat a közösségellenes, nemkívánatos magatartásokat, amelyek tanúsítása, és jogellenességet kizáró tényezõk hiánya esetén az elkövetõt büntetõjogi felelõsségre vonják és amennyiben bûnös megbüntetik.',to_date('19-FEBR. -14','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Bíróság','A bíróságok az igazságszolgáltatást gyakorló, más hatalmi ágaktól független, politikailag és világnézetileg semleges, önálló hatóságok.A bíróságok feladatait a bírók és egyéb bírósági alkalmazottak látják el.',to_date('15-AUG.  -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Szociológia','A szociológia a társadalmi élet összetevõi, az egyének, csoportok, szervezetek, intézmények (család, iskola, egyház, állam stb.) életének, mûködésének törvényszerûségeit, szabályait és folyamatait vizsgáló elméleti és gyakorlati tudomány.',to_date('18-AUG.  -09','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Karl Marx','Karl Marx (Trier, 1818. május 5. – London, 1883. március 14.) német filozófus, közgazdász, szociológus, a kommunista munkásmozgalom teoretikusa, egyben a marxizmus ihletõje; munkássága jelentõsen hozzájárult a társadalomtudomány fejlõdéséhez.',to_date('19-NOV.  -21','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Madarak','A madarak meszes héjú tojással szaporodó, melegvérû gerinces állatok. Mellsõ végtagjaik szárnyakká módosultak. Járólábaik vannak , melyeken megtalálható a csüd,amely elõsegíti a landolást. Szegycsontjuk tarajos, melyhez erõs mellizmok tapadnak, így segítve a repülést.',to_date('18-OKT.  -10','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Állattenyésztés','Az állattenyésztés a mezõgazdaság egyik fõ területét képezõ gazdasági tevékenység. A hatályos magyar törvényi meghatározás szerint "Az állatok tenyész- és haszonértékét növelõ célirányos tevékenységek összessége.',to_date('20-SZEPT.-23','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Sakktábla földterület','A sakktáblásodás olyan helyzetre utal, amikor a földtulajdon két vagy több tulajdonos között keveredik, ami sakktáblás mintázatot eredményez. Mivel a kiosztott földterületeket eltérõ módon és intenzitással mûvelik, a sakktábla-mintázat így a levegõbõl is látható.',to_date('21-MÁRC. -11','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a hétköznapi beszédben gyakran használt igeidõje. Jelentése: present=jelen, perfect=tökéletes, befejezett. Összetett igeidõ, két tagból áll: a to have (birtokolni), mint segédige egyszerû jelen idejébõl és a fõige. ',to_date('22-JAN.  -06','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('C nyelv','A C egy általános célú programozási nyelv, melyet Dennis Ritchie és fejlesztette ki 1969 és 1973 között a UNIX rendszerekre. Idõvel jóformán minden operációs rendszerre készítettek C fordítóprogramot, és a legnépszerûbb programozási nyelvek egyikévé vált.',to_date('20-JÚL.  -15','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Kõolaj','A kõolaj (más néven ásványolaj) a Föld szilárd kérgében található természetes eredetû, élõ szervezetek bomlásával, átalakulásával keletkezett ásványi termék. Fõ összetevõi folyékony halmazállapotú szénhidrogének.',to_date('21-AUG.  -31','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Atomenergia','Az atomenergia a magreakció kontrollált felhasználása munka, hõ és elektromosság formájú energia létrehozásának céljából. Egy irányított láncreakció után keletkezik és hõt hoz létre, amit víz felforralására, gõz elõállítására, gõzturbina meghajtására használnak.',to_date('21-MÁRC. -05','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Négyzet','A négyzet egyenlõ oldalú téglalap, vagyis olyan sokszög, melynek négy egyenlõ oldala és négy egyenlõ szöge, mégpedig derékszöge van. Térbeli megfelelõje a kocka.',to_date('20-OKT.  -12','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Hardver','Hardver a számítógép fizikailag megfogható részeinek összessége. A számítógép mûködéséhez alapvetõen hardver és szoftver szükséges, a kettõ közötti kapcsolatot a firmware hozza létre, ami a hardverekbe a gyártók által "beépített" szoftvernek tekinthetõ. ',to_date('19-MÁJ.  -14','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Macskafajták','A macskatenyésztés eredményeként a házi macska számos fajtáját sikerült kitenyészteni. Egyes fajták kialakításánál a házi macskát vadon élõ macskafajokkal keresztezték, így jött létre például a bengáli és a szavanna.',to_date('19-MÁRC. -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Alma','Az alma vagy almafa a rózsafélék családjába tartozó növénynemzetség. Körülbelül 55 faj tartozik ide, melyek töbsége Ázsiában, kisebb része Európában és Észak-Amerikában honos. A nemzetségbe tartozó egyedek, vagyis az almafák termésének a neve is alma.',to_date('19-MÁRC. -01','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Almasav','Az almasav savanykás ízû, szerves dikarbonsav, ami számos savanyú ételben megtalálható. Színtelen kristályokat alkot. Higroszkópos vegyület. Jól oldódik vízben és alkoholban. A borostyánkõsav hidroxiszármazékának tekinthetõ.',to_date('19-JÚN.  -17','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Személyi jog','A személyi jog a polgári jog viszonylag önálló jogterülete, amely a személyi viszonyok, különösen a jogalanyiság és a személyiségi jogok szabályozásán keresztül biztosítja, védi a személyi autonómiát, a személyek önrendelkezésének, önmegvalósításának szabadságát',to_date('21-OKT.  -16','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Téglalap','A téglalap egy olyan négyszög, amelynek minden szöge derékszög. Két-két szemközti oldala egyenlõ hosszúságú, ezért minden téglalap egyben paralelogramma is. A négyzet a téglalap egy speciális típusa, amelynek minden oldala egyenlõ. A téglalap belsõ szögeinek összege 360°.',to_date('22-JAN.  -13','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Tulajdonnév','A tulajdonnév a fõnevek azon fajtája, amely egy konkrét egyedre utal, tehát azonosító funkciót tölt be. Fajtái: személynevek, állatnevek, tárgynevek, földrajzi nevek, intézménynevek, márkanevek... ',to_date('20-MÁRC. -04','RR-MON-DD'));
Insert into HOME.CIKK (CIM,TARTALOM,LETREHOZAS_DATUM) values ('Petõfi Sándor','Petõfi Sándor (született Petrovics Sándor, Kiskõrös, 1823. január 1. - Fehéregyháza körül, 1849. július 31.) magyar költõ, forradalmár, nemzeti hõs, a magyar költészet egyik legismertebb és egyik legkiemelkedõbb alakja.',to_date('20-JÚL.  -14','RR-MON-DD'));

REM INSERTING into HOME.FELHASZNALO
SET
    DEFINE OFF;
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
SET
    DEFINE OFF;
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Számítógép-tudomány','https://hu.wikipedia.org/wiki/Számítógép-programozás',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Bíróság','https://hu.wikipedia.org/wiki/Magyarország_bíróságai',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejlesztés','https://hu.wikipedia.org/wiki/Számítógép-programozás',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelvészet','https://hu.wikipedia.org/wiki/Nyelvészet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociológia','https://hu.wikipedia.org/wiki/Szociológia',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Költészet','https://hu.wikipedia.org/wiki/Költészet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Büntetõjog','https://hu.wikipedia.org/wiki/Büntetõjog',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(növénynemzetség)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajták','https://hu.wikipedia.org/wiki/Macskafajták_listája',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonnév','https://hu.wikipedia.org/wiki/Tulajdonnév',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Petõfi Sándor','https://hu.wikipedia.org/wiki/Petõfi_Sándor',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programozási_nyelv)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Állattenyésztés','https://hu.wikipedia.org/wiki/Állattenyésztés',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Négyzet','https://hu.wikipedia.org/wiki/Négyzet',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakktábla földterület','https://hu.wikipedia.org/wiki/Sakktábla_(földterület)',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-tétel','https://hu.wikipedia.org/wiki/Gersgorin-tétel',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-tétel','https://hu.wikipedia.org/wiki/Pitagorasz-tétel',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kõolaj','https://hu.wikipedia.org/wiki/Kõolaj',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Személyi jog','https://hu.wikipedia.org/wiki/Személyi_jog',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Téglalap','https://hu.wikipedia.org/wiki/Téglalap',' ');
Insert into HOME.FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filozófia','https://hu.wikipedia.org/wiki/A_filozófia_alapkérdése',' ');

REM INSERTING into HOME.HIBA_BEJELENTES
SET
    DEFINE OFF;
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A születési és halálozási dátum között ? van.','elírás','_rudolf_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Téglalap','A 360 után a fokjel helyett ? van írva.','elírás',';)_sacika_');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A többsége szó rosszul van írva.','helyesírási hiba','lali_nagy');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az állatok szó rosszul van írva.','helyesírási hiba','*petruska*');
Insert into HOME.HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb szó rosszul van írva.','helyesírási hiba','yvette');

REM INSERTING into HOME.KULCSSZO
SET
    DEFINE OFF;
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Bíróság','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filozófia','Filozófia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelvészet','Nyelvészet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociológia','Szociológia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Költészet','Költészet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Madár',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Büntetõjog','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejlesztés','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajták','Macska',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filozófia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonnév','Nyelvtan',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Számítógép-tudomány','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Petõfi Sándor','Költészet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Állattenyésztés','Agrár',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Négyzet','Négyszög',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','Kémia',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakktábla földterület','Agrár',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-tétel','Matematika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-tétel','Matematika',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','Költészet',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kõolaj','Földrajz',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Személyi jog','Jog',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan',' ');
Insert into HOME.KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Téglalap','Négyszög',' ');

REM INSERTING into HOME.MODOSITAS
SET
    DEFINE OFF;
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
SET
    DEFINE OFF;
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Bíróság','Jog','Bíróság',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Filozófia','Filozófia','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Nyelvészet','Nyelvészet','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Szociológia','Szociológia','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Költészet','Költészet','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Madarak','Állat','Madár',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Büntetõjog','Jog','Büntetõjog',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Alma','Növény','Alma',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Rendszerfejlesztés','Informatika','Rendszerfejlesztés',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Macskafajták','Állat','Macska',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Hardver','Informatika','Hardver',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Almasav','Természettudomány','Kémia',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Karl Marx','Filozófia','Karl Marx',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Tulajdonnév','Nyelvtan','Fogalom',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Számítógép-tudomány','Informatika','Programozás',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Petõfi Sándor','Költészet','Petõfi Sándor',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('C nyelv','Informatika','Programozás',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Macska','Állat','Macska',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Állattenyésztés','Agrártudomány','Állattenyésztés',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Kutya','Állat','Kutya',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Négyzet','Matematika','Négyszög',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Atomenergia','Természettudomány','Kémia',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Sakktábla földterület','Agrártudomány','Földmûvelés',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Gersgorin-tétel','Matematika','Tétel',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Pitagorasz-tétel','Matematika','Tétel',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Himnusz','Költészet','Himnusz',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Kõolaj','Természettudomány','Földrajz',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Present Perfect','Bölcsészettudomány','Angol',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Téglalap','Matematika','Négyszög',' ');
Insert into HOME.TEMAKOR (CIM,NEV,ALTEMAKOR,TARTALOM) values ('Személyi jog','Jog','Személyi jog',' ');

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
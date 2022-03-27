--------------------------------------------------------
--  File created - Sunday-March-27-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "ADMIN" 
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

  CREATE TABLE "CIKK" 
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

  CREATE TABLE "FELHASZNALO" 
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

  CREATE TABLE "FORRAS" 
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

  CREATE TABLE "HIBA_BEJELENTES" 
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

  CREATE TABLE "KULCSSZO" 
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

  CREATE TABLE "MODOSITAS" 
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

  CREATE TABLE "TEMAKOR" 
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

--------------------------------------------------------
--  DDL for Index FORRAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORRAS_PK" ON "FORRAS" ("CIM", "HIVATKOZAS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TEMAKOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEMAKOR_PK" ON "TEMAKOR" ("CIM", "NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN_PK" ON "ADMIN" ("FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MODOSITAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MODOSITAS_PK" ON "MODOSITAS" ("CIM", "FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CIKK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CIKK_PK" ON "CIKK" ("CIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KULCSSZO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULCSSZO_PK" ON "KULCSSZO" ("CIM", "MEGNEVEZES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELHASZNALO_PK" ON "FELHASZNALO" ("FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIBA_BEJELENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HIBA_BEJELENTES_PK" ON "HIBA_BEJELENTES" ("FELHASZNALONEV", "CIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TEMAKOR
--------------------------------------------------------

  ALTER TABLE "TEMAKOR" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "TEMAKOR" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "TEMAKOR" MODIFY ("ALTEMAKOR" NOT NULL ENABLE);
  ALTER TABLE "TEMAKOR" ADD CONSTRAINT "TEMAKOR_PK" PRIMARY KEY ("CIM", "NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FORRAS
--------------------------------------------------------

  ALTER TABLE "FORRAS" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "FORRAS" MODIFY ("HIVATKOZAS" NOT NULL ENABLE);
  ALTER TABLE "FORRAS" MODIFY ("TARTALOM" NOT NULL ENABLE);
  ALTER TABLE "FORRAS" ADD CONSTRAINT "FORRAS_PK" PRIMARY KEY ("CIM", "HIVATKOZAS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "MODOSITAS" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "MODOSITAS" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "MODOSITAS" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "MODOSITAS" ADD CONSTRAINT "MODOSITAS_PK" PRIMARY KEY ("CIM", "FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("INTEZET" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("TUDOMANYOS_FOKOZAT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" MODIFY ("SZAKTERULET" NOT NULL ENABLE);
  ALTER TABLE "ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "KULCSSZO" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "KULCSSZO" MODIFY ("MEGNEVEZES" NOT NULL ENABLE);
  ALTER TABLE "KULCSSZO" MODIFY ("LINK" NOT NULL ENABLE);
  ALTER TABLE "KULCSSZO" ADD CONSTRAINT "KULCSSZO_PK" PRIMARY KEY ("CIM", "MEGNEVEZES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "FELHASZNALO" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("SZERZO_E" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" MODIFY ("SZUL_DATUM" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALO" ADD CONSTRAINT "FELHASZNALO_PK" PRIMARY KEY ("FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------

  ALTER TABLE "HIBA_BEJELENTES" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "HIBA_BEJELENTES" MODIFY ("HIBAJELENTES" NOT NULL ENABLE);
  ALTER TABLE "HIBA_BEJELENTES" MODIFY ("HIBANEV" NOT NULL ENABLE);
  ALTER TABLE "HIBA_BEJELENTES" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_PK" PRIMARY KEY ("FELHASZNALONEV", "CIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "CIKK" MODIFY ("SZERZO" NOT NULL ENABLE);
  ALTER TABLE "CIKK" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "CIKK" MODIFY ("TARTALOM" NOT NULL ENABLE);
  ALTER TABLE "CIKK" MODIFY ("LETREHOZAS_DATUM" NOT NULL ENABLE);
  ALTER TABLE "CIKK" ADD CONSTRAINT "CIKK_PK" PRIMARY KEY ("CIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN" ADD CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CIKK
--------------------------------------------------------

  ALTER TABLE "CIKK" ADD CONSTRAINT "CIKK_FK" FOREIGN KEY ("SZERZO")
	  REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FORRAS
--------------------------------------------------------

  ALTER TABLE "FORRAS" ADD CONSTRAINT "FORRAS_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "CIKK" ("CIM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HIBA_BEJELENTES
--------------------------------------------------------

  ALTER TABLE "HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "CIKK" ("CIM") ENABLE;
  ALTER TABLE "HIBA_BEJELENTES" ADD CONSTRAINT "HIBA_BEJELENTES_FK2" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KULCSSZO
--------------------------------------------------------

  ALTER TABLE "KULCSSZO" ADD CONSTRAINT "KULCSSZO_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "CIKK" ("CIM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MODOSITAS
--------------------------------------------------------

  ALTER TABLE "MODOSITAS" ADD CONSTRAINT "MODOSITAS_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "CIKK" ("CIM") ENABLE;
  ALTER TABLE "MODOSITAS" ADD CONSTRAINT "MODOSITAS_FK2" FOREIGN KEY ("FELHASZNALONEV")
	  REFERENCES "FELHASZNALO" ("FELHASZNALONEV") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEMAKOR
--------------------------------------------------------

  ALTER TABLE "TEMAKOR" ADD CONSTRAINT "TEMAKOR_FK1" FOREIGN KEY ("CIM")
	  REFERENCES "CIKK" ("CIM") ENABLE;

--------------------------------------------------------
-- Insert into all tables
--------------------------------------------------------
REM INSERTING into FELHASZNALO
SET DEFINE OFF;
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('evi_nagy','y','evelinnagy@freemail.hu','56hzf78ki',to_date('13-MAR-92','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('f.imi','y','feketeimre65@gmail.com','j54dt789u',to_date('26-OCT-84','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elekes_anna','y','eanna@gmail.hu','rjfi876hnb',to_date('06-SEP-89','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('hajnus_seres','n','hajniseres@gmail.com','kdtsg436w',to_date('12-AUG-04','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kerekes.zs','n','zsolt88@freemail.hu','jsteg1c357',to_date('16-APR-88','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('marci79','y','marcellkis79@gmail.com','25g4fd57s',to_date('30-NOV-79','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('peti','n','peterhalmos@freemail.hu','hjau5gd3n',to_date('22-JUL-82','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gizi_deli98','y','dgizella@gmail.com','uks68n6g43',to_date('16-JAN-98','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rudolf_','n','baloghrudolf@gmail.com','8jvbg643dl',to_date('05-FEB-76','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('andikaa_:)_','y','bandrea@gmail.com','9kdtg54d21',to_date('24-JUL-99','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_galambos_norbi_','y','gnorbert@freemail.hu','jfhsz765bf',to_date('21-DEC-00','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('lali_nagy','n','nagylajos@gmail.com','arfv4f2fs4',to_date('06-JUN-96','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kevin_1995','n','gkevin1995@gmail.com','9ikhgfs67s',to_date('11-OCT-95','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values (';)_sacika_','n','soossarolta@freemail.hu','5dgftrv4h2',to_date('26-SEP-02','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*--lina--*','y','karolinatoth@gmail.com','9kdifhsn54',to_date('14-FEB-98','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('mesi_kurucz','y','kuruczemese@gmail.com','nspo7h5x8x',to_date('11-AUG-87','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kucsera-adri','n','adriennkucsera@gmail.com','8li84fs3fa',to_date('29-MAY-93','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*petruska*','n','bodapetra@freemail.hu','1da23sksu4',to_date('04-JUL-95','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kiss_bali','n','balazskiss@gmail.com','7a3exoxo5t',to_date('09-OCT-90','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ricsi','n','ricsikocsis@gmail.com','oa8sj5rsha',to_date('01-AUG-02','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_rebi_2003','y','rebekakardos@freemail.hu','5s7hd4xgsz',to_date('22-NOV-03','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('roland_halmai','n','halmairoland96@gmail.com','5364gs5sga',to_date('22-SEP-96','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gabi_holi','y','holigabriella@gmail.com','ze5dhf6ess',to_date('27-MAY-82','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('g_jani__72','y','janosgal@gmail.com','ksihdb63sa',to_date('20-JUN-72','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('*armando;)*','y','armandtoth@freemail.hu','64rdkdks8q',to_date('24-JUN-92','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gerikeee_','n','gergodobos@gmail.com','sg537rjd6a',to_date('18-DEC-85','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('gyuszi','n','gyuladarai@gmail.com','kd64na92ms',to_date('08-SEP-64','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_cs_i_p_i_','y','kiralyildi77@gmail.com','ie6429s721',to_date('28-JUL-77','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('-noncsi-','y','hercegnoemi@gmail.com','52g638dhd5',to_date('31-DEC-99','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('ercsi','n','kerierika@freemail.hu','twhs426dgs',to_date('19-JUN-03','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('szilvi82','n','feherszilvia@gmail.com','1za306gsua',to_date('16-AUG-98','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_r_n_t__','y','derrenata@gmail.com','27shd54hsf',to_date('20-FEB-72','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('maci_laci_:)','y','mackolaszlo@gmail.com','ie537qjd62',to_date('25-JUL-63','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('yvette','n','radicsivett5@freemail.hu','725srddxks',to_date('14-NOV-95','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_-leo-_','y','szaboleopold@freemail.hu','j734197sda',to_date('03-MAY-05','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('karcsi*-*','n','vaskaroly@gmail.com','9hs52hej82',to_date('20-SEP-56','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('varga__timi','y','timeavarga@gmail.com','i893s51vax',to_date('22-JUL-76','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('v_kt_r__','n','kelemenviktoria@freemail.hu','714qgd2hxn',to_date('22-JUL-67','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_vendel--','n','vendelszabo@gmail.com','5isd839jsx',to_date('30-SEP-86','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('n_a_t_i','n','nataliaszakali@gmail.com','1zs628csgn',to_date('17-OCT-90','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('o.martin','n','hercegmartin@gmail.com','628sjs6sta',to_date('16-AUG-91','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_kende_02','n','kunkende@freemail.hu','6sh24sdkka',to_date('11-SEP-02','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('levi','n','leventekalmar@gmail.com','qe3s56gsya',to_date('24-MAY-87','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('eszterrr','y','esztervarga@freemail.hu','t37ejsksld',to_date('21-NOV-73','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('elek_ferenc','n','elekferenc63@gmail.com','us6a5sjqky',to_date('11-JUL-62','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('__albi__','n','abertfont@gmail.com','tw5nxska4',to_date('27-JUL-82','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('bence<*>','n','tothbence@freemail.hu','jsk5918hss',to_date('17-FEB-83','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('_van_dus_','n','deakvanda@gmail.com','7q21tg35s',to_date('20-DEC-86','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('pisti','n','pistihajdrik@gmail.com','ows7kwiw7',to_date('07-JAN-83','DD-MON-RR'));
Insert into FELHASZNALO (FELHASZNALONEV,SZERZO_E,EMAIL,JELSZO,SZUL_DATUM) values ('kissferenc','n','kissferenc@gmail.com','nfhhz567e',to_date('19-MAY-72','DD-MON-RR'));


REM INSERTING into ADMIN
SET DEFINE OFF;
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('varga__timi','MTA','PhD','Magyar nyelv �s irodalom');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('mesi_kurucz','SZTE TTIK','PhD','Matematika');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('elekes_anna','SZTE TTIK','PhD','Term�szettudom�nyok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('f.imi','ELTE BTK','PhD','B�lcs�szettudom�nyok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('marci79','SZTE �JTK','PhD','Jogtudom�nyok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('gabi_holi','ELTE T�TK','PhD','Szociol�gia');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('g_jani__72','SZTE TTIK','PhD','Informatika');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('eszterrr','MTA','PhD','Agr�rtudom�nyok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('_galambos_norbi_','ELTE BTK','PhD','Filoz�fia');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('-noncsi-','MTA','PhD','Nyelv�szet');
REM INSERTING into CIKK
SET DEFINE OFF;
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Alma','Az alma vagy almafa a r�zsaf�l�k csal�dj�ba tartoz� n�v�nynemzets�g. K�r�lbel�l 55 faj tartozik ide, melyek t�bs�ge �zsi�ban, kisebb r�sze Eur�p�ban �s �szak-Amerik�ban honos. A nemzets�gbe tartoz� egyedek, vagyis az almaf�k term�s�nek a neve is alma.',to_date('01-MAR-19','DD-MON-RR'),'_r_n_t__');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Sz�m�t�g�p-tudom�ny','A sz�m�t�g�p-programoz�s egy vagy t�bb absztrakt algoritmus megval�s�t�s�t jelenti egy bizonyos programoz�si nyelven. A programoz�sban megtal�ljuk a m?v�szet, a tudom�ny, a matematika �s a m�rn�ki tudom�ny elemeit.',to_date('05-MAR-22','DD-MON-RR'),'g_jani__72');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Rendszerfejleszt�s','A rendszerfejleszt�st a programoz�s, szoftverfejleszt�s egyik l�p�sek�nt kezeli. Eszk�zt�r�t a feladat nagys�g�t�l, c�lj�t�l f�gg?en haszn�lj�k fel a programoz�s sor�n: szabv�nyos modellez?, rendszerfejleszt�si m�dszertan, projektmenedzsment, alkalmaz�sfejleszt�s stb. ',to_date('16-MAR-19','DD-MON-RR'),'g_jani__72');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macska','A macska, m�s n�ven h�zi macska kiseb termet? h�sev? eml?s, amely a ragadoz�k rendj�n bel�l a macskaf�l�k csal�dj�nak Felis nem�hez �s vadmacska faj�hoz tartozik. A vadmacska alfaja.',to_date('17-JUL-19','DD-MON-RR'),'_-leo-_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pitagorasz-t�tel','A Pitagorasz-t�tel az euklideszi geometria egyik alapvet? �ll�t�sa. B�rmely der�ksz�g? h�romsz�g leghosszabb oldal�nak (�tfog�j�nak) n�gyzete megegyezik a m�sik k�t oldal (a befog�k) n�gyzet�sszeg�vel.',to_date('22-JUL-21','DD-MON-RR'),'mesi_kurucz');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Gersgorin-t�tel','A line�ris algebr�ban a Gersgorin-t�tel azt mondja ki, hogy a komplex test feletti n�gyzetes m�trix saj�t�rt�kei a komplex s�kon a f?�tl� elemei k�r�li �gynevezett Gersgorin-k�r�k�n bel�l tal�lhat�ak. ',to_date('04-MAY-21','DD-MON-RR'),'mesi_kurucz');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Himnusz','A himnusz dics?�t? �s magasztal� �nek. Eredetileg vall�sos jelleg?, Istent vagy isteni hatalmat dics?�t?, hozz� seg�ts�g�rt foh�szkod�, imaszer? l�rai m?faj. T�rgya �s alkalma teh�t eredetileg valamely istens�g vagy Isten dics�rete, megnyer�se �s magasztal�sa.',to_date('10-AUG-21','DD-MON-RR'),'varga__timi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('K�lt�szet','A k�lt�szet az irodalomnak m?v�szeti �ga. Mint az emberi l�lek m?v�szi tev�kenys�ge, egyr�szt a m?v�szetek k�z� tartozik, m�sr�szt mint irodalmi munk�ss�g, az ember besz�dm?vei k�z�. T�rv�nyeit tudom�nyos rendszeress�ggel a k�lt�szettan (po�tika) t�rgyalja. ',to_date('22-AUG-18','DD-MON-RR'),'evi_nagy');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Nyelv�szet','�ltal�noss�gban a nyelv�szet, latinosan grammatika az emberi nyelvekkel foglalkoz� tudom�ny�g, �s nyelv�sz az, aki ezt a tudom�nyt m?veli.',to_date('13-JUN-17','DD-MON-RR'),'-noncsi-');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Filoz�fia','A filoz�fia, mint tudom�ny alapk�rd�se, hogy mik�ppen viszonyul a gondolkod�s a l�thez, a tudat az anyaghoz. A k�l�nb�z? filoz�fiai rendszerek tulajdonk�ppen mind e probl�ma kifejt�sei, megold�sai, m�g abban az esetben is, ha az alapk�rd�st k�zvetlen�l nem is vetik fel.',to_date('06-MAY-16','DD-MON-RR'),'_galambos_norbi_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('B�ntet?jog','A b�ntet?jog a jog azon �ga, amely meghat�rozza azokat a k�z�ss�gellenes, nemk�v�natos magatart�sokat, amelyek tan�s�t�sa, �s jogelleness�get kiz�r� t�nyez?k hi�nya eset�n az elk�vet?t b�ntet?jogi felel?ss�gre vonj�k �s amennyiben b?n�s megb�ntetik.',to_date('14-FEB-19','DD-MON-RR'),'marci79');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('B�r�s�g','A b�r�s�gok az igazs�gszolg�ltat�st gyakorl�, m�s hatalmi �gakt�l f�ggetlen, politikailag �s vil�gn�zetileg semleges, �n�ll� hat�s�gok.A b�r�s�gok feladatait a b�r�k �s egy�b b�r�s�gi alkalmazottak l�tj�k el.',to_date('04-AUG-15','DD-MON-RR'),'marci79');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szociol�gia','A szociol�gia a t�rsadalmi �let �sszetev?i, az egy�nek, csoportok, szervezetek, int�zm�nyek (csal�d, iskola, egyh�z, �llam stb.) �let�nek, m?k�d�s�nek t�rv�nyszer?s�geit, szab�lyait �s folyamatait vizsg�l� elm�leti �s gyakorlati tudom�ny.',to_date('09-AUG-18','DD-MON-RR'),'gabi_holi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Karl Marx','Karl Marx (Trier, 1818. m�jus 5. ? London, 1883. m�rcius 14.) n�met filoz�fus, k�zgazd�sz, szociol�gus, a kommunista munk�smozgalom teoretikusa, egyben a marxizmus ihlet?je; munk�ss�ga jelent?sen hozz�j�rult a t�rsadalomtudom�ny fejl?d�s�hez.',to_date('21-NOV-19','DD-MON-RR'),'evi_nagy');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Madarak','A madarak meszes h�j� toj�ssal szaporod�, melegv�r? gerinces �llatok. Mells? v�gtagjaik sz�rnyakk� m�dosultak. J�r�l�baik vannak , melyeken megtal�lhat� a cs�d,amely el?seg�ti a landol�st. Szegycsontjuk tarajos, melyhez er?s mellizmok tapadnak, �gy seg�tve a rep�l�st.',to_date('10-OCT-18','DD-MON-RR'),'elekes_anna');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('�llatteny�szt�s','Az �llatteny�szt�s a mez?gazdas�g egyik f? ter�let�t k�pez? gazdas�gi tev�kenys�g. A hat�lyos magyar t�rv�nyi meghat�roz�s szerint "Az �llatok teny�sz- �s haszon�rt�k�t n�vel? c�lir�nyos tev�kenys�gek �sszess�ge.',to_date('23-SEP-20','DD-MON-RR'),'eszterrr');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Sakkt�bla f�ldter�let','A sakkt�bl�sod�s olyan helyzetre utal, amikor a f�ldtulajdon k�t vagy t�bb tulajdonos k�z�tt keveredik, ami sakkt�bl�s mint�zatot eredm�nyez. Mivel a kiosztott f�ldter�leteket elt�r? m�don �s intenzit�ssal m?velik, a sakkt�bla-mint�zat �gy a leveg?b?l is l�that�.',to_date('11-MAR-21','DD-MON-RR'),'*armando;)*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a h�tk�znapi besz�dben gyakran haszn�lt igeid?je. Jelent�se: present=jelen, perfect=t�k�letes, befejezett. �sszetett igeid?, k�t tagb�l �ll: a to have (birtokolni), mint seg�dige egyszer? jelen idej�b?l �s a f?ige. ',to_date('06-JAN-22','DD-MON-RR'),'f.imi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('C nyelv','A C egy �ltal�nos c�l� programoz�si nyelv, melyet Dennis Ritchie �s fejlesztette ki 1969 �s 1973 k�z�tt a UNIX rendszerekre. Id?vel j�form�n minden oper�ci�s rendszerre k�sz�tettek C ford�t�programot, �s a legn�pszer?bb programoz�si nyelvek egyik�v� v�lt.',to_date('15-JUL-20','DD-MON-RR'),'andikaa_:)_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('K?olaj','A k?olaj (m�s n�ven �sv�nyolaj) a F�ld szil�rd k�rg�ben tal�lhat� term�szetes eredet?, �l? szervezetek boml�s�val, �talakul�s�val keletkezett �sv�nyi term�k. F? �sszetev?i foly�kony halmaz�llapot� sz�nhidrog�nek.',to_date('31-AUG-21','DD-MON-RR'),'_cs_i_p_i_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Atomenergia','Az atomenergia a magreakci� kontroll�lt felhaszn�l�sa munka, h? �s elektromoss�g form�j� energia l�trehoz�s�nak c�lj�b�l. Egy ir�ny�tott l�ncreakci� ut�n keletkezik �s h?t hoz l�tre, amit v�z felforral�s�ra, g?z el?�ll�t�s�ra, g?zturbina meghajt�s�ra haszn�lnak.',to_date('05-MAR-21','DD-MON-RR'),'andikaa_:)_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('N�gyzet','A n�gyzet egyenl? oldal� t�glalap, vagyis olyan soksz�g, melynek n�gy egyenl? oldala �s n�gy egyenl? sz�ge, m�gpedig der�ksz�ge van. T�rbeli megfelel?je a kocka.',to_date('12-OCT-20','DD-MON-RR'),'_rebi_2003');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Hardver','Hardver a sz�m�t�g�p fizikailag megfoghat� r�szeinek �sszess�ge. A sz�m�t�g�p m?k�d�s�hez alapvet?en hardver �s szoftver sz�ks�ges, a kett? k�z�tti kapcsolatot a firmware hozza l�tre, ami a hardverekbe a gy�rt�k �ltal "be�p�tett" szoftvernek tekinthet?. ',to_date('14-MAY-19','DD-MON-RR'),'*--lina--*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macskafajt�k','A macskateny�szt�s eredm�nyek�nt a h�zi macska sz�mos fajt�j�t siker�lt kiteny�szteni. Egyes fajt�k kialak�t�s�n�l a h�zi macsk�t vadon �l? macskafajokkal keresztezt�k, �gy j�tt l�tre p�ld�ul a beng�li �s a szavanna.',to_date('16-MAR-19','DD-MON-RR'),'gizi_deli98');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Almasav','Az almasav savanyk�s �z?, szerves dikarbonsav, ami sz�mos savany� �telben megtal�lhat�. Sz�ntelen krist�lyokat alkot. Higroszk�pos vegy�let. J�l old�dik v�zben �s alkoholban. A borosty�nk?sav hidroxisz�rmaz�k�nak tekinthet?.',to_date('17-JUN-19','DD-MON-RR'),'gizi_deli98');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szem�lyi jog','A szem�lyi jog a polg�ri jog viszonylag �n�ll� jogter�lete, amely a szem�lyi viszonyok, k�l�n�sen a jogalanyis�g �s a szem�lyis�gi jogok szab�lyoz�s�n kereszt�l biztos�tja, v�di a szem�lyi auton�mi�t, a szem�lyek �nrendelkez�s�nek, �nmegval�s�t�s�nak szabads�g�t',to_date('16-OCT-21','DD-MON-RR'),'_rebi_2003');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('T�glalap','A t�glalap egy olyan n�gysz�g, amelynek minden sz�ge der�ksz�g. K�t-k�t szemk�zti oldala egyenl? hossz�s�g�, ez�rt minden t�glalap egyben paralelogramma is. A n�gyzet a t�glalap egy speci�lis t�pusa, amelynek minden oldala egyenl?. A t�glalap bels? sz�geinek �sszege 360�.',to_date('13-JAN-22','DD-MON-RR'),'_cs_i_p_i_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Tulajdonn�v','A tulajdonn�v a f?nevek azon fajt�ja, amely egy konkr�t egyedre utal, teh�t azonos�t� funkci�t t�lt be. Fajt�i: szem�lynevek, �llatnevek, t�rgynevek, f�ldrajzi nevek, int�zm�nynevek, m�rkanevek... ',to_date('04-MAR-20','DD-MON-RR'),'*--lina--*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pet?fi S�ndor','Pet?fi S�ndor (sz�letett Petrovics S�ndor, Kisk?r�s, 1823. janu�r 1. - Feh�regyh�za k�r�l, 1849. j�lius 31.) magyar k�lt?, forradalm�r, nemzeti h?s, a magyar k�lt�szet egyik legismertebb �s egyik legkiemelked?bb alakja.',to_date('14-JUL-20','DD-MON-RR'),'varga__timi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kutya','A kutya vagy eb ujjon j�r� eml?s ragadoz� �llat, a sz�rke farkas egy m�r kihalt alfaj�nak h�zias�tott form�ja. Az egyetlen olyan eml?s �llatfaj, amely tudom�nyos nev�ben megkapta a familiaris, azaz a csal�dhoz tartoz� jelz?t. A kuty�kat szok�s a t�rs�llatok sor�ban emlegetni.',to_date('07-OCT-20','DD-MON-RR'),'evi_nagy');

REM INSERTING into FORRAS
SET DEFINE OFF;
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya','A kutya a farkas egy m�ra m�r kihalt alfaj�nak h�zias�t�s�val j�tt l�tre, amint azt mitokondri�lis DNS-adatok is bizony�tj�k. A h�zias�t�s kezdet�nek id?pontj�t tudom�nyos vit�k �vezik, de �ltal�ban 10 000-100 000 �vvel ezel?ttre teszik, azonban a h�zias�t�s kezdeteir?l semmilyen dokumentum sem maradt fent, ez�rt csak felt�telez�sekre hagyatkozhatunk.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia','Az energiaell�t�s napjainkban, s a j�v?ben is a t�rsadalom �let�nek, a gazdas�g fejl?d�s�nek, s az �lhet? k�rnyezet fenntart�s�nak egyik kritikus eleme lesz. A tudom�ny sz�mos megold�st k�n�l az energiaig�nyek kiel�g�t�s�re, amelyek alkalmaz�s�val k�l�nf�le strat�gi�k kompon�lhat�k meg.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakkt�bla f�ldter�let','https://hu.wikipedia.org/wiki/Sakkt�bla_(f�ldter�let)','A sakkt�bla kialakul�sa probl�m�kat okozhat a hozz�f�r�s �s az �kol�giai gazd�lkod�s szempontj�b�l. Ez az egyik f? oka a nemzeti erd?k hat�rain bel�li belter�letbe von�soknak. Ahogyan Kalifornia �szaknyugati r�sz�n is, a sakkt�bl�sod�s probl�m�khoz vezetett a nemzeti erd?ter�letek kezel�s�ben.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-t�tel','https://hu.wikipedia.org/wiki/Gersgorin-t�tel','A t�tel teh�t azt �ll�tja, hogy a m�trix saj�t�rt�kei a Gersgorin-k�r�k uni�j�n bel�l helyezkednek el. Speci�lis esetben, ha a m�trix diagon�lis, akkor a Gersgorin-k�r�k sugara nulla, �s a t�tel azt az ismert t�nyt fejezi ki, hogy a diagon�lis m�trix saj�t�rt�kei �ppen a f?�tl�beli elemei.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-t�tel','https://hu.wikipedia.org/wiki/Pitagorasz-t�tel','Manaps�g tal�n nincs olyan ember a civiliz�lt vil�gban, aki ne hallott volna a Pitagorasz-t�tel nev? �sszef�gg�sr?l. Ez olyan alapt�tel, amelyet minden iskol�s gyereknek meg kell tanulnia. S?t, ez az egyike azon kev�s matematikai �ll�t�snak, amelyet tal�n olyanok is viszonylag rendszeresen haszn�lnak, akiknek am�gy eg�sz �let�kben nem sok k�z�k van a matematik�hoz.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz','A m?faj eredete k�ts�gk�v�l kultikus, k�z�ss�gi, vall�sos �nnepekhez kapcsol�dott. Ez�rt a k�lt?i form�k k�z�tt m�ig a legszem�lytelenebb, a meg�nekelt t�rgy uralkodik benne, �s nem a foh�szkod� szem�lye. A hindu Rigv�d�t, az egyiptomi himnuszokat a k�lt? egy�nis�g�nek kiz�r�sa jellemzi, a k�z�ss�g im�dja benn�k isteneit.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('K?olaj','https://hu.wikipedia.org/wiki/K?olaj','A vil�gszerte megn�vekedett kereslet az energiahordoz�k ir�nt feler?s�tette a vet�lked�st az USA, az EU, Jap�n k�z�tt. Azonban ezeknek mostan�ban m�r egy �j ellenf�llel kell szemben�zni�k, a felt�rekv? K�n�val. K�na egyre ink�bb az�rt k�zd, hogy hozz�jusson azokhoz az er?forr�sokhoz, amelyek k�pesek szinten tartani a felsz�rnyal� gazdas�g�t.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect','Megjegyz�s: A r�gi angol nyelvben a mozg�st kifejez? ig�k befejezett jelenj�t nem a to have, hanem a to be ig�vel k�pezt�k. Elv�tve ma is el?fordul pl. az I have gone helyett az I am gone.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('T�glalap','https://hu.wikipedia.org/wiki/T�glalap','A t�glalapsz�mok figur�lis mivoltuk miatt a legegyszer?bben t�glalapokk�nt �br�zolhat�ak, ahogyan az �br�n l�that�. Az els? n t�glalapsz�m �sszeg�t meghat�rozhatjuk, ha a nagy t�glalap ter�let�b?l kivonjuk a nem kell? ter�leteket.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sz�m�t�g�p-tudom�ny','https://hu.wikipedia.org/wiki/Sz�m�t�g�p-programoz�s','Programoz�s olyan, t�bb l�p�sb?l �ll� folyamat, amely sor�n a programoz� a feladat meg�rt�s�t?l eljut a sz�m�t�g�pen fut� program k�dol�s�ig, s?t a program dokument�l�s�ig; a legjellegzetesebb l�p�sei: specifik�l�s, algoritmiz�l�s, k�dol�s, tesztel�s, hibakeres�s �s -jav�t�s, hat�konys�gvizsg�lat �s -n�vel�s, dokument�l�s.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('B�r�s�g','https://hu.wikipedia.org/wiki/Magyarorsz�g_b�r�s�gai','Az Orsz�ggy?l�s a b�r�s�gi hat�sk�r�k jog�llami szint?, hat�kony ell�t�sa, a b�r�i f�ggetlens�g elv�nek marad�ktalan megval�s�t�sa �s az �t�lkez�s egys�g�nek biztos�t�sa �rdek�ben a b�r�s�gok szervezeti fel�p�t�s�r?l, feladatair�l �s igazgat�s�r�l az Alapt�rv�ny v�grehajt�s�ra.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejleszt�s','https://hu.wikipedia.org/wiki/Sz�m�t�g�p-programoz�s','A programk�sz�t�s menet�nek els? l�p�se a feladat meghat�roz�sa, prec�z "�jrafogalmaz�sa". Milyen is legyen, mit v�rjunk el t?le? N�zz�nk meg n�h�ny - j�nak t?n? - k�vetelm�nyt egyel?re c�mszavakban!');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelv�szet','https://hu.wikipedia.org/wiki/Nyelv�szet','Ebben a k�nyvben a nyelv grammatik�j�t a megszokott�l elt�r? m�dszerekkel �s egy, a kor�bbi, bevett elm�letekt?l k�l�nb�z? nyelvtanmodell keret�ben mutatom be. A nyelvtanr�l k�t diszcipl�na, a nyelv�szet �s a kognit�v pszichol�gia hat�r�n mozogva igyekszem majd k�pet alkotni.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociol�gia','https://hu.wikipedia.org/wiki/Szociol�gia','Az 1968-ban alak�tott szerkeszt?bizotts�g int�zm�nyi h�tt�r n�lk�l a fent id�zett koncepci� alapj�n a Venczel J�zsef �ltal �ssze�ll�tott eredeti c�msz�jegyz�ket megpr�b�lta egy lexikont�l m?faj�n�l fogva elv�rhat� adatokkal kit�lteni. Az 1970-ben alakult Kriterion K�nyvkiad� int�zm�nyi gazd�ja lett a tervezett kiadv�nynak.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('K�lt�szet','https://hu.wikipedia.org/wiki/K�lt�szet','K�lt�szet(po�zis), az irodalomnak m?v�szeti �ga, a m?v�szet, melynek k�zege az emberi besz�d. A K. teh�t mint az emberi l�lek m?v�szi tev�kenys�ge, egyr�szt a m?v�szetek k�z� tartozik, m�sr�szt, mint irodalmi munk�ss�g, az ember besz�dm?vei k�z�, s re� n�zve r�szint a m?v�szetek �ltal�nos t�rv�nyei, r�szint az irodalmi m?vek t�rv�nyei �rv�nyesek.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak','A vil�gon �l? mintegy 10000 mad�rfaj k�z�l a faj legal�bb egy, minden val�sz�n?s�g szerint term�szetes �llom�nyb�l sz�rmaz� egyede 1950. janu�r 1. �ta legal�bb egyszer hiteles�thet?en el?fordult Magyarorsz�g mai hat�rain bel�l. ');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('B�ntet?jog','https://hu.wikipedia.org/wiki/B�ntet?jog','A b?ncselekm�nyt az elk�vet�se idej�n hat�lyban lev? t�rv�ny szerint kell elb�r�lni. Ha a cselekm�ny elb�r�l�sakor hat�lyban lev? �j b�ntet? t�rv�ny szerint a cselekm�ny m�r nem b?ncselekm�ny, vagy enyh�bben b�r�land� el, akkor az �j t�rv�nyt kell alkalmazni; egy�bk�nt az �j b�ntet? t�rv�nynek nincs visszahat� ereje.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(n�v�nynemzets�g)','Az �rdekes term�sek t�bb szinon�mja is elfogadott �s haszn�lt a botanik�ban: pl term�scsoportok, t�rsas term�sek, korikarp term�sek, term�scsokrok. Egyetlen vir�gban apokarp term?t�jb�l alakulnak ki (a vir�gban minden egyes term?lev�l k�l�n�ll� term?t alkot.), �gy  egy term�skocs�nyon t�bb term�s helyezkedik el.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajt�k','https://hu.wikipedia.org/wiki/Macskafajt�k_list�ja','E t�rv�ny c�lja, hogy el?seg�tse az �llatvil�g egyedeinek v�delm�t, fokozza az emberek felel?ss�gtudat�t az �llatokkal val� k�m�letes b�n�sm�d �rdek�ben, valamint meghat�rozza az �llatok v�delm�nek alapvet? szab�lyait.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver','A ''Sz�m�t�g�pek architekt�r�ja'' c. k�nyv els?sorban az informatikus szakos f?iskolai hallgat�k r�sz�re k�sz�lt, c�lja: bevezet? ismereteket adni a sz�m�t�g�pek fel�p�t�s�r?l, m?k�d�s�r?l, a nagyobb teljes�tm�ny? architekt�r�k kialak�t�s�nak alapelveir?l olyan szinten, amely el?seg�ti a kapcsol�d� t�rgyak tanul�s�t, meg�rt�s�t.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav','A malolaktikus ferment�ci� folyamat�ban az almasav a kev�sb� savany� tejsavv� alakul. Az almasavat, ha �lelmiszer-adal�kanyagk�nt alkalmazz�k, E296 E-sz�mmal jel�lik. Az almasavat az �desiparban is felhaszn�lj�k, de az almasavtartalm� cukork�k t�lzott fogyaszt�sa sz�jirrit�ci�t okozhat.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx','Az 1870-es �vek v�g�n Paul Lafargue �s Jules Guesde vezette fiatal szocialist�k nevezt�k magukat els?k�nt marxist�knak. Marx ezt nem vette valami j� n�ven, mivel n�zeteiket sok tekintetben epigonizmus, leegyszer?s�t�s, fr�zispufogtat�s, dogmatizmus jellemezte, amit sz�mos level�ben kritiz�lt, kig�nyolt.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonn�v','https://hu.wikipedia.org/wiki/Tulajdonn�v','Minthogy a tulajdonn�v egyedi l�tez?kre utal, jellemz?en nem ker�lhet t�bbes sz�mba. Kiv�tel ez al�l az olyan alak, amelynek eleve t�bbes sz�m� alakja van (pl. F�l�p-szigetek). Ezt lesz�m�tva ha egy tulajdonn�v t�bbes sz�mba ker�l, az gyakran k�zneves�l�sr?l �rulkodik.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pet?fi S�ndor','https://hu.wikipedia.org/wiki/Pet?fi_S�ndor','A Pet?fir?l sz�l� �r�sok t�bbs�ge m�sf�l �vsz�zada az "?szintes�g�t", az "egyszer?s�g�t", a "vil�goss�g�t" emeli ki. "?szinte, mert egyszer? �s nincs mit elhallgatnia. ?szinte, mint ahogy az �veg �tl�tsz�" ? mondta Babits Mih�ly is, aki szerint ? olyan "tiszta �s primit�v t�k�r", "amelyen nem hagy nyomot a legfeket�bb k�p sem."');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programoz�si_nyelv)','A C t�pusos programnyelv. Ez azt jelenti, hogy miel?tt egy v�ltoz�t haszn�lni szeretn�nk, deklar�lnunk kell azt. Figyelj�nk arra, hogy a a ford�t�program a v�ltoz�nevekben is k�l�nbs�get tesz a kis �s a nagy bet?k k�z�tt.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska','A leg�jabb DNS vizsg�lat eredm�nyei azt mutatj�k, hogy a vil�g �sszes h�zimacsk�ja a k�zel-keleti term�keny f�lhold ter�let�n �lt �t n?st�ny macsk�t�l sz�rmazik. A Science c�m? tudom�nyos lapban publik�lt tanulm�nyt egy nemzetk�zi kutat�csoport k�sz�tette 979 h�zimacska �s vadmacska genetikai �sszet�tel�nek vizsg�lat�val.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('�llatteny�szt�s','https://hu.wikipedia.org/wiki/�llatteny�szt�s','A mez?gazdas�g a nemzetgazdas�g azon �gazata, amely mag�ba foglalja a f�ldm?vel�st �s az �llatteny�szt�st. A mez?gazdas�gi termel�s folyhat �nell�t�, t?k�s illetve kollekt�v keretek k�z�tt. A mez?gazdas�gi term�keket �nell�t�sra �s elad�sra lehet termelni. Elm�leti r�sz�vel a mez?gazdas�g-tudom�ny foglalkozik.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('N�gyzet','https://hu.wikipedia.org/wiki/N�gyzet','A k�znyelvben a n�gyzetet is n�ha kock�nak nevezik, de a geometria szigor�an csak a 3 dimenzi�s testet nevezi kock�nak. A matematika m�s r�szter�letein el?fordul, hogy az egys�ges kezel�s �rdek�ben k�l�nb�z? dimenzi�s kock�kr�l besz�lnek.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szem�lyi jog','https://hu.wikipedia.org/wiki/Szem�lyi_jog','A szem�lyi viszonyokat szab�lyoz� joganyag viszonylag elk�l�n�lt r�sze, jogter�lete a polg�ri jognak. A szem�lyi jog m�r a 20. sz�zad elej�n kin?tt a polg�ri jog �ltal�nos r�sz�b?l, �n�ll� jogter�lett� v�lt.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filoz�fia','https://hu.wikipedia.org/wiki/A_filoz�fia_alapk�rd�se','Az empiriokriticizmus (g�r�g nyelvb?l: tapasztalatkritika) szubjekt�v idealista filoz�fiai �ramlat, amely szerint a megismer�s alapt�rv�nye a gondolkod�s �konomi�ja, gazdas�goss�ga.');
REM INSERTING into HIBA_BEJELENTES
SET DEFINE OFF;
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A sz�let�si �s hal�loz�si d�tum k�z�tt ? van.','el�r�s','_rudolf_');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('T�glalap','A 360 ut�n a fokjel helyett ? van �rva.','el�r�s',';)_sacika_');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A t�bbs�ge sz� rosszul van �rva.','helyes�r�si hiba','lali_nagy');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az �llatok sz� rosszul van �rva.','helyes�r�si hiba','*petruska*');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb sz� rosszul van �rva.','helyes�r�si hiba','yvette');
REM INSERTING into KULCSSZO
SET DEFINE OFF;
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('B�r�s�g','Jog','https://birosag.hu/birosagokrol/birosagi-szervezet/birosagi-szervezetrendszer');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filoz�fia','Filoz�fia','https://zanza.tv/filozofia/filozofia/mi-filozofia');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelv�szet','Nyelv�szet','https://wikiszotar.hu/ertelmezo-szotar/Nyelv%C3%A9szet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociol�gia','Szociol�gia','http://www.szociologia.eu/szociologia-fogalomtar');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('K�lt�szet','K�lt�szet','https://wikiszotar.hu/ertelmezo-szotar/K%C3%B6lt%C3%A9szet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Mad�r','http://madar.szojelentese.com/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('B�ntet?jog','Jog','https://buntetojog.info/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma','https://idegen-szavak-szotara.hu/alma-jelent%C3%A9se');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejleszt�s','Informatika','https://hu.wikipedia.org/wiki/Rendszerfejleszt%C3%A9si_%C3%A9letciklus');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajt�k','Macska','https://www.zooplus.hu/magazin/macska-magazin/macskafajtak');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika','https://informatika.gtportal.eu/?f0=alapfogalmak_25');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma','https://www.tuja.hu/kerteszeti-lexikon/almasav.html');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filoz�fia','https://index.hu/tudomany/tortenelem/2018/05/05/marx_200/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonn�v','Nyelvtan','https://www.nkp.hu/tankonyv/magyar_nyelv_6_nat2020/lecke_01_008');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sz�m�t�g�p-tudom�ny','Informatika','https://wiki.prog.hu/wiki/Mi_az_a_programoz%C3%A1s');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pet?fi S�ndor','K�lt�szet','http://magyar-irodalom.elte.hu/sulinet/igyjo/setup/portrek/petofi/petofi');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika','https://uni-obuda.hu/users/schuster.gyorgy/c.pdf');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska','https://wikiszotar.hu/ertelmezo-szotar/Macska');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('�llatteny�szt�s','Agr�r','http://users.atw.hu/torpepinscher/tartas-tenyesztes/tenyesztes-altalanos.php');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya','https://wikiszotar.hu/ertelmezo-szotar/Kutya');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('N�gyzet','N�gysz�g','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','K�mia','http://energiapedia.hu/atomenergia-felhasznalasa-atomeromuvek-magyaroszagon-es-a-vilagban');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakkt�bla f�ldter�let','Agr�r','https://24.hu/kultura/2017/02/08/amerika-erdeiben-bujnak-meg-a-vilag-legnagyobb-sakktablai/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-t�tel','Matematika','http://www.inf.u-szeged.hu/~kgelle/sites/default/files/upload/06_sajatertek_gersgorin.pdf');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-t�tel','Matematika','https://matekarcok.hu/pitagorasz-tetele/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','K�lt�szet','https://zanza.tv/fogalom/himnusz');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('K?olaj','F�ldrajz','https://xforest.hu/koolaj/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szem�lyi jog','Jog','https://ogyei.gov.hu/szemelyi_jog/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan','https://angoltanulas.net/hirek/present-perfect/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('T�glalap','N�gysz�g','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
REM INSERTING into MODOSITAS
SET DEFINE OFF;
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('T�glalap',to_date('10-FEB-22','DD-MON-RR'),'mesi_kurucz');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Filoz�fia',to_date('12-MAR-20','DD-MON-RR'),'_galambos_norbi_');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('B�ntet?jog',to_date('18-JUN-20','DD-MON-RR'),'marci79');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('K�lt�szet',to_date('20-MAR-21','DD-MON-RR'),'varga__timi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Hardver',to_date('27-JAN-22','DD-MON-RR'),'g_jani__72');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Szociol�gia',to_date('15-JUL-20','DD-MON-RR'),'gabi_holi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('�llatteny�szt�s',to_date('02-FEB-22','DD-MON-RR'),'eszterrr');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('N�gyzet',to_date('13-AUG-21','DD-MON-RR'),'mesi_kurucz');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Himnusz',to_date('09-DEC-21','DD-MON-RR'),'varga__timi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('C nyelv',to_date('22-SEP-21','DD-MON-RR'),'g_jani__72');
REM INSERTING into TEMAKOR
SET DEFINE OFF;
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('B�r�s�g','Jog','B�r�s�g');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Filoz�fia','Filoz�fia','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Nyelv�szet','Nyelv�szet','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szociol�gia','Szociol�gia','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('K�lt�szet','K�lt�szet','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Madarak','�llat','Mad�r');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('B�ntet?jog','Jog','B�ntet?jog');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Alma','N�v�ny','Alma');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Rendszerfejleszt�s','Informatika','Rendszerfejleszt�s');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macskafajt�k','�llat','Macska');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Hardver','Informatika','Hardver');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Almasav','Term�szettudom�ny','K�mia');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Karl Marx','Filoz�fia','Karl Marx');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Tulajdonn�v','Nyelvtan','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Sz�m�t�g�p-tudom�ny','Informatika','Programoz�s');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pet?fi S�ndor','K�lt�szet','Pet?fi S�ndor');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('C nyelv','Informatika','Programoz�s');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macska','�llat','Macska');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('�llatteny�szt�s','Agr�rtudom�ny','�llatteny�szt�s');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kutya','�llat','Kutya');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('N�gyzet','Matematika','N�gysz�g');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Atomenergia','Term�szettudom�ny','K�mia');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Sakkt�bla f�ldter�let','Agr�rtudom�ny','F�ldm?vel�s');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Gersgorin-t�tel','Matematika','T�tel');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pitagorasz-t�tel','Matematika','T�tel');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Himnusz','K�lt�szet','Himnusz');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('K?olaj','Term�szettudom�ny','F�ldrajz');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Present Perfect','B�lcs�szettudom�ny','Angol');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('T�glalap','Matematika','N�gysz�g');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szem�lyi jog','Jog','Szem�lyi jog');
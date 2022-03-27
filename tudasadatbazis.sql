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
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('varga__timi','MTA','PhD','Magyar nyelv és irodalom');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('mesi_kurucz','SZTE TTIK','PhD','Matematika');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('elekes_anna','SZTE TTIK','PhD','Természettudományok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('f.imi','ELTE BTK','PhD','Bölcsészettudományok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('marci79','SZTE ÁJTK','PhD','Jogtudományok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('gabi_holi','ELTE TáTK','PhD','Szociológia');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('g_jani__72','SZTE TTIK','PhD','Informatika');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('eszterrr','MTA','PhD','Agrártudományok');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('_galambos_norbi_','ELTE BTK','PhD','Filozófia');
Insert into ADMIN (FELHASZNALONEV,INTEZET,TUDOMANYOS_FOKOZAT,SZAKTERULET) values ('-noncsi-','MTA','PhD','Nyelvészet');
REM INSERTING into CIKK
SET DEFINE OFF;
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Alma','Az alma vagy almafa a rózsafélék családjába tartozó növénynemzetség. Körülbelül 55 faj tartozik ide, melyek töbsége Ázsiában, kisebb része Európában és Észak-Amerikában honos. A nemzetségbe tartozó egyedek, vagyis az almafák termésének a neve is alma.',to_date('01-MAR-19','DD-MON-RR'),'_r_n_t__');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Számítógép-tudomány','A számítógép-programozás egy vagy több absztrakt algoritmus megvalósítását jelenti egy bizonyos programozási nyelven. A programozásban megtaláljuk a m?vészet, a tudomány, a matematika és a mérnöki tudomány elemeit.',to_date('05-MAR-22','DD-MON-RR'),'g_jani__72');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Rendszerfejlesztés','A rendszerfejlesztést a programozás, szoftverfejlesztés egyik lépéseként kezeli. Eszköztárát a feladat nagyságától, céljától függ?en használják fel a programozás során: szabványos modellez?, rendszerfejlesztési módszertan, projektmenedzsment, alkalmazásfejlesztés stb. ',to_date('16-MAR-19','DD-MON-RR'),'g_jani__72');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macska','A macska, más néven házi macska kiseb termet? húsev? eml?s, amely a ragadozók rendjén belül a macskafélék családjának Felis neméhez és vadmacska fajához tartozik. A vadmacska alfaja.',to_date('17-JUL-19','DD-MON-RR'),'_-leo-_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pitagorasz-tétel','A Pitagorasz-tétel az euklideszi geometria egyik alapvet? állítása. Bármely derékszög? háromszög leghosszabb oldalának (átfogójának) négyzete megegyezik a másik két oldal (a befogók) négyzetösszegével.',to_date('22-JUL-21','DD-MON-RR'),'mesi_kurucz');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Gersgorin-tétel','A lineáris algebrában a Gersgorin-tétel azt mondja ki, hogy a komplex test feletti négyzetes mátrix sajátértékei a komplex síkon a f?átló elemei körüli úgynevezett Gersgorin-körökön belül találhatóak. ',to_date('04-MAY-21','DD-MON-RR'),'mesi_kurucz');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Himnusz','A himnusz dics?ít? és magasztaló ének. Eredetileg vallásos jelleg?, Istent vagy isteni hatalmat dics?ít?, hozzá segítségért fohászkodó, imaszer? lírai m?faj. Tárgya és alkalma tehát eredetileg valamely istenség vagy Isten dicsérete, megnyerése és magasztalása.',to_date('10-AUG-21','DD-MON-RR'),'varga__timi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Költészet','A költészet az irodalomnak m?vészeti ága. Mint az emberi lélek m?vészi tevékenysége, egyrészt a m?vészetek közé tartozik, másrészt mint irodalmi munkásság, az ember beszédm?vei közé. Törvényeit tudományos rendszerességgel a költészettan (poétika) tárgyalja. ',to_date('22-AUG-18','DD-MON-RR'),'evi_nagy');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Nyelvészet','Általánosságban a nyelvészet, latinosan grammatika az emberi nyelvekkel foglalkozó tudományág, és nyelvész az, aki ezt a tudományt m?veli.',to_date('13-JUN-17','DD-MON-RR'),'-noncsi-');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Filozófia','A filozófia, mint tudomány alapkérdése, hogy miképpen viszonyul a gondolkodás a léthez, a tudat az anyaghoz. A különböz? filozófiai rendszerek tulajdonképpen mind e probléma kifejtései, megoldásai, még abban az esetben is, ha az alapkérdést közvetlenül nem is vetik fel.',to_date('06-MAY-16','DD-MON-RR'),'_galambos_norbi_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Büntet?jog','A büntet?jog a jog azon ága, amely meghatározza azokat a közösségellenes, nemkívánatos magatartásokat, amelyek tanúsítása, és jogellenességet kizáró tényez?k hiánya esetén az elkövet?t büntet?jogi felel?sségre vonják és amennyiben b?nös megbüntetik.',to_date('14-FEB-19','DD-MON-RR'),'marci79');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Bíróság','A bíróságok az igazságszolgáltatást gyakorló, más hatalmi ágaktól független, politikailag és világnézetileg semleges, önálló hatóságok.A bíróságok feladatait a bírók és egyéb bírósági alkalmazottak látják el.',to_date('04-AUG-15','DD-MON-RR'),'marci79');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Szociológia','A szociológia a társadalmi élet összetev?i, az egyének, csoportok, szervezetek, intézmények (család, iskola, egyház, állam stb.) életének, m?ködésének törvényszer?ségeit, szabályait és folyamatait vizsgáló elméleti és gyakorlati tudomány.',to_date('09-AUG-18','DD-MON-RR'),'gabi_holi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Karl Marx','Karl Marx (Trier, 1818. május 5. ? London, 1883. március 14.) német filozófus, közgazdász, szociológus, a kommunista munkásmozgalom teoretikusa, egyben a marxizmus ihlet?je; munkássága jelent?sen hozzájárult a társadalomtudomány fejl?déséhez.',to_date('21-NOV-19','DD-MON-RR'),'evi_nagy');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Madarak','A madarak meszes héjú tojással szaporodó, melegvér? gerinces állatok. Mells? végtagjaik szárnyakká módosultak. Járólábaik vannak , melyeken megtalálható a csüd,amely el?segíti a landolást. Szegycsontjuk tarajos, melyhez er?s mellizmok tapadnak, így segítve a repülést.',to_date('10-OCT-18','DD-MON-RR'),'elekes_anna');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Állattenyésztés','Az állattenyésztés a mez?gazdaság egyik f? területét képez? gazdasági tevékenység. A hatályos magyar törvényi meghatározás szerint "Az állatok tenyész- és haszonértékét növel? célirányos tevékenységek összessége.',to_date('23-SEP-20','DD-MON-RR'),'eszterrr');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Sakktábla földterület','A sakktáblásodás olyan helyzetre utal, amikor a földtulajdon két vagy több tulajdonos között keveredik, ami sakktáblás mintázatot eredményez. Mivel a kiosztott földterületeket eltér? módon és intenzitással m?velik, a sakktábla-mintázat így a leveg?b?l is látható.',to_date('11-MAR-21','DD-MON-RR'),'*armando;)*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Present Perfect','A Present Perfect az angol nyelv egyik, a hétköznapi beszédben gyakran használt igeid?je. Jelentése: present=jelen, perfect=tökéletes, befejezett. Összetett igeid?, két tagból áll: a to have (birtokolni), mint segédige egyszer? jelen idejéb?l és a f?ige. ',to_date('06-JAN-22','DD-MON-RR'),'f.imi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('C nyelv','A C egy általános célú programozási nyelv, melyet Dennis Ritchie és fejlesztette ki 1969 és 1973 között a UNIX rendszerekre. Id?vel jóformán minden operációs rendszerre készítettek C fordítóprogramot, és a legnépszer?bb programozási nyelvek egyikévé vált.',to_date('15-JUL-20','DD-MON-RR'),'andikaa_:)_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('K?olaj','A k?olaj (más néven ásványolaj) a Föld szilárd kérgében található természetes eredet?, él? szervezetek bomlásával, átalakulásával keletkezett ásványi termék. F? összetev?i folyékony halmazállapotú szénhidrogének.',to_date('31-AUG-21','DD-MON-RR'),'_cs_i_p_i_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Atomenergia','Az atomenergia a magreakció kontrollált felhasználása munka, h? és elektromosság formájú energia létrehozásának céljából. Egy irányított láncreakció után keletkezik és h?t hoz létre, amit víz felforralására, g?z el?állítására, g?zturbina meghajtására használnak.',to_date('05-MAR-21','DD-MON-RR'),'andikaa_:)_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Négyzet','A négyzet egyenl? oldalú téglalap, vagyis olyan sokszög, melynek négy egyenl? oldala és négy egyenl? szöge, mégpedig derékszöge van. Térbeli megfelel?je a kocka.',to_date('12-OCT-20','DD-MON-RR'),'_rebi_2003');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Hardver','Hardver a számítógép fizikailag megfogható részeinek összessége. A számítógép m?ködéséhez alapvet?en hardver és szoftver szükséges, a kett? közötti kapcsolatot a firmware hozza létre, ami a hardverekbe a gyártók által "beépített" szoftvernek tekinthet?. ',to_date('14-MAY-19','DD-MON-RR'),'*--lina--*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Macskafajták','A macskatenyésztés eredményeként a házi macska számos fajtáját sikerült kitenyészteni. Egyes fajták kialakításánál a házi macskát vadon él? macskafajokkal keresztezték, így jött létre például a bengáli és a szavanna.',to_date('16-MAR-19','DD-MON-RR'),'gizi_deli98');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Almasav','Az almasav savanykás íz?, szerves dikarbonsav, ami számos savanyú ételben megtalálható. Színtelen kristályokat alkot. Higroszkópos vegyület. Jól oldódik vízben és alkoholban. A borostyánk?sav hidroxiszármazékának tekinthet?.',to_date('17-JUN-19','DD-MON-RR'),'gizi_deli98');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Személyi jog','A személyi jog a polgári jog viszonylag önálló jogterülete, amely a személyi viszonyok, különösen a jogalanyiság és a személyiségi jogok szabályozásán keresztül biztosítja, védi a személyi autonómiát, a személyek önrendelkezésének, önmegvalósításának szabadságát',to_date('16-OCT-21','DD-MON-RR'),'_rebi_2003');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Téglalap','A téglalap egy olyan négyszög, amelynek minden szöge derékszög. Két-két szemközti oldala egyenl? hosszúságú, ezért minden téglalap egyben paralelogramma is. A négyzet a téglalap egy speciális típusa, amelynek minden oldala egyenl?. A téglalap bels? szögeinek összege 360°.',to_date('13-JAN-22','DD-MON-RR'),'_cs_i_p_i_');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Tulajdonnév','A tulajdonnév a f?nevek azon fajtája, amely egy konkrét egyedre utal, tehát azonosító funkciót tölt be. Fajtái: személynevek, állatnevek, tárgynevek, földrajzi nevek, intézménynevek, márkanevek... ',to_date('04-MAR-20','DD-MON-RR'),'*--lina--*');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Pet?fi Sándor','Pet?fi Sándor (született Petrovics Sándor, Kisk?rös, 1823. január 1. - Fehéregyháza körül, 1849. július 31.) magyar költ?, forradalmár, nemzeti h?s, a magyar költészet egyik legismertebb és egyik legkiemelked?bb alakja.',to_date('14-JUL-20','DD-MON-RR'),'varga__timi');
Insert into CIKK (CIM,TARTALOM,LETREHOZAS_DATUM,SZERZO) values ('Kutya','A kutya vagy eb ujjon járó eml?s ragadozó állat, a szürke farkas egy már kihalt alfajának háziasított formája. Az egyetlen olyan eml?s állatfaj, amely tudományos nevében megkapta a familiaris, azaz a családhoz tartozó jelz?t. A kutyákat szokás a társállatok sorában emlegetni.',to_date('07-OCT-20','DD-MON-RR'),'evi_nagy');

REM INSERTING into FORRAS
SET DEFINE OFF;
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Kutya','https://hu.wikipedia.org/wiki/Kutya','A kutya a farkas egy mára már kihalt alfajának háziasításával jött létre, amint azt mitokondriális DNS-adatok is bizonyítják. A háziasítás kezdetének id?pontját tudományos viták övezik, de általában 10 000-100 000 évvel ezel?ttre teszik, azonban a háziasítás kezdeteir?l semmilyen dokumentum sem maradt fent, ezért csak feltételezésekre hagyatkozhatunk.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Atomenergia','https://hu.wikipedia.org/wiki/Atomenergia','Az energiaellátás napjainkban, s a jöv?ben is a társadalom életének, a gazdaság fejl?désének, s az élhet? környezet fenntartásának egyik kritikus eleme lesz. A tudomány számos megoldást kínál az energiaigények kielégítésére, amelyek alkalmazásával különféle stratégiák komponálhatók meg.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Sakktábla földterület','https://hu.wikipedia.org/wiki/Sakktábla_(földterület)','A sakktábla kialakulása problémákat okozhat a hozzáférés és az ökológiai gazdálkodás szempontjából. Ez az egyik f? oka a nemzeti erd?k határain belüli belterületbe vonásoknak. Ahogyan Kalifornia északnyugati részén is, a sakktáblásodás problémákhoz vezetett a nemzeti erd?területek kezelésében.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Gersgorin-tétel','https://hu.wikipedia.org/wiki/Gersgorin-tétel','A tétel tehát azt állítja, hogy a mátrix sajátértékei a Gersgorin-körök unióján belül helyezkednek el. Speciális esetben, ha a mátrix diagonális, akkor a Gersgorin-körök sugara nulla, és a tétel azt az ismert tényt fejezi ki, hogy a diagonális mátrix sajátértékei éppen a f?átlóbeli elemei.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pitagorasz-tétel','https://hu.wikipedia.org/wiki/Pitagorasz-tétel','Manapság talán nincs olyan ember a civilizált világban, aki ne hallott volna a Pitagorasz-tétel nev? összefüggésr?l. Ez olyan alaptétel, amelyet minden iskolás gyereknek meg kell tanulnia. S?t, ez az egyike azon kevés matematikai állításnak, amelyet talán olyanok is viszonylag rendszeresen használnak, akiknek amúgy egész életükben nem sok közük van a matematikához.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Himnusz','https://hu.wikipedia.org/wiki/Himnusz','A m?faj eredete kétségkívül kultikus, közösségi, vallásos ünnepekhez kapcsolódott. Ezért a költ?i formák között máig a legszemélytelenebb, a megénekelt tárgy uralkodik benne, és nem a fohászkodó személye. A hindu Rigvédát, az egyiptomi himnuszokat a költ? egyéniségének kizárása jellemzi, a közösség imádja bennük isteneit.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('K?olaj','https://hu.wikipedia.org/wiki/K?olaj','A világszerte megnövekedett kereslet az energiahordozók iránt feler?sítette a vetélkedést az USA, az EU, Japán között. Azonban ezeknek mostanában már egy új ellenféllel kell szembenézniük, a feltörekv? Kínával. Kína egyre inkább azért küzd, hogy hozzájusson azokhoz az er?forrásokhoz, amelyek képesek szinten tartani a felszárnyaló gazdaságát.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Present Perfect','https://hu.wikipedia.org/wiki/Present_Perfect','Megjegyzés: A régi angol nyelvben a mozgást kifejez? igék befejezett jelenjét nem a to have, hanem a to be igével képezték. Elvétve ma is el?fordul pl. az I have gone helyett az I am gone.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Téglalap','https://hu.wikipedia.org/wiki/Téglalap','A téglalapszámok figurális mivoltuk miatt a legegyszer?bben téglalapokként ábrázolhatóak, ahogyan az ábrán látható. Az els? n téglalapszám összegét meghatározhatjuk, ha a nagy téglalap területéb?l kivonjuk a nem kell? területeket.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Számítógép-tudomány','https://hu.wikipedia.org/wiki/Számítógép-programozás','Programozás olyan, több lépésb?l álló folyamat, amely során a programozó a feladat megértését?l eljut a számítógépen futó program kódolásáig, s?t a program dokumentálásáig; a legjellegzetesebb lépései: specifikálás, algoritmizálás, kódolás, tesztelés, hibakeresés és -javítás, hatékonyságvizsgálat és -növelés, dokumentálás.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Bíróság','https://hu.wikipedia.org/wiki/Magyarország_bíróságai','Az Országgy?lés a bírósági hatáskörök jogállami szint?, hatékony ellátása, a bírói függetlenség elvének maradéktalan megvalósítása és az ítélkezés egységének biztosítása érdekében a bíróságok szervezeti felépítésér?l, feladatairól és igazgatásáról az Alaptörvény végrehajtására.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Rendszerfejlesztés','https://hu.wikipedia.org/wiki/Számítógép-programozás','A programkészítés menetének els? lépése a feladat meghatározása, precíz "újrafogalmazása". Milyen is legyen, mit várjunk el t?le? Nézzünk meg néhány - jónak t?n? - követelményt egyel?re címszavakban!');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Nyelvészet','https://hu.wikipedia.org/wiki/Nyelvészet','Ebben a könyvben a nyelv grammatikáját a megszokottól eltér? módszerekkel és egy, a korábbi, bevett elméletekt?l különböz? nyelvtanmodell keretében mutatom be. A nyelvtanról két diszciplína, a nyelvészet és a kognitív pszichológia határán mozogva igyekszem majd képet alkotni.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Szociológia','https://hu.wikipedia.org/wiki/Szociológia','Az 1968-ban alakított szerkeszt?bizottság intézményi háttér nélkül a fent idézett koncepció alapján a Venczel József által összeállított eredeti címszójegyzéket megpróbálta egy lexikontól m?fajánál fogva elvárható adatokkal kitölteni. Az 1970-ben alakult Kriterion Könyvkiadó intézményi gazdája lett a tervezett kiadványnak.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Költészet','https://hu.wikipedia.org/wiki/Költészet','Költészet(poézis), az irodalomnak m?vészeti ága, a m?vészet, melynek közege az emberi beszéd. A K. tehát mint az emberi lélek m?vészi tevékenysége, egyrészt a m?vészetek közé tartozik, másrészt, mint irodalmi munkásság, az ember beszédm?vei közé, s reá nézve részint a m?vészetek általános törvényei, részint az irodalmi m?vek törvényei érvényesek.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Madarak','https://hu.wikipedia.org/wiki/Madarak','A világon él? mintegy 10000 madárfaj közül a faj legalább egy, minden valószín?ség szerint természetes állományból származó egyede 1950. január 1. óta legalább egyszer hitelesíthet?en el?fordult Magyarország mai határain belül. ');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Büntet?jog','https://hu.wikipedia.org/wiki/Büntet?jog','A b?ncselekményt az elkövetése idején hatályban lev? törvény szerint kell elbírálni. Ha a cselekmény elbírálásakor hatályban lev? új büntet? törvény szerint a cselekmény már nem b?ncselekmény, vagy enyhébben bírálandó el, akkor az új törvényt kell alkalmazni; egyébként az új büntet? törvénynek nincs visszaható ereje.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Alma','https://hu.wikipedia.org/wiki/Alma_(növénynemzetség)','Az érdekes termések több szinonímja is elfogadott és használt a botanikában: pl terméscsoportok, társas termések, korikarp termések, terméscsokrok. Egyetlen virágban apokarp term?tájból alakulnak ki (a virágban minden egyes term?levél különálló term?t alkot.), így  egy terméskocsányon több termés helyezkedik el.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macskafajták','https://hu.wikipedia.org/wiki/Macskafajták_listája','E törvény célja, hogy el?segítse az állatvilág egyedeinek védelmét, fokozza az emberek felel?sségtudatát az állatokkal való kíméletes bánásmód érdekében, valamint meghatározza az állatok védelmének alapvet? szabályait.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Hardver','https://hu.wikipedia.org/wiki/Hardver','A ''Számítógépek architektúrája'' c. könyv els?sorban az informatikus szakos f?iskolai hallgatók részére készült, célja: bevezet? ismereteket adni a számítógépek felépítésér?l, m?ködésér?l, a nagyobb teljesítmény? architektúrák kialakításának alapelveir?l olyan szinten, amely el?segíti a kapcsolódó tárgyak tanulását, megértését.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Almasav','https://hu.wikipedia.org/wiki/Almasav','A malolaktikus fermentáció folyamatában az almasav a kevésbé savanyú tejsavvá alakul. Az almasavat, ha élelmiszer-adalékanyagként alkalmazzák, E296 E-számmal jelölik. Az almasavat az édesiparban is felhasználják, de az almasavtartalmú cukorkák túlzott fogyasztása szájirritációt okozhat.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Karl Marx','https://hu.wikipedia.org/wiki/Karl_Marx','Az 1870-es évek végén Paul Lafargue és Jules Guesde vezette fiatal szocialisták nevezték magukat els?ként marxistáknak. Marx ezt nem vette valami jó néven, mivel nézeteiket sok tekintetben epigonizmus, leegyszer?sítés, frázispufogtatás, dogmatizmus jellemezte, amit számos levelében kritizált, kigúnyolt.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Tulajdonnév','https://hu.wikipedia.org/wiki/Tulajdonnév','Minthogy a tulajdonnév egyedi létez?kre utal, jellemz?en nem kerülhet többes számba. Kivétel ez alól az olyan alak, amelynek eleve többes számú alakja van (pl. Fülöp-szigetek). Ezt leszámítva ha egy tulajdonnév többes számba kerül, az gyakran köznevesülésr?l árulkodik.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Pet?fi Sándor','https://hu.wikipedia.org/wiki/Pet?fi_Sándor','A Pet?fir?l szóló írások többsége másfél évszázada az "?szinteségét", az "egyszer?ségét", a "világosságát" emeli ki. "?szinte, mert egyszer? és nincs mit elhallgatnia. ?szinte, mint ahogy az üveg átlátszó" ? mondta Babits Mihály is, aki szerint ? olyan "tiszta és primitív tükör", "amelyen nem hagy nyomot a legfeketébb kép sem."');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('C nyelv','https://hu.wikipedia.org/wiki/C_(programozási_nyelv)','A C típusos programnyelv. Ez azt jelenti, hogy miel?tt egy változót használni szeretnénk, deklarálnunk kell azt. Figyeljünk arra, hogy a a fordítóprogram a változónevekben is különbséget tesz a kis és a nagy bet?k között.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Macska','https://hu.wikipedia.org/wiki/Macska','A legújabb DNS vizsgálat eredményei azt mutatják, hogy a világ összes házimacskája a közel-keleti termékeny félhold területén élt öt n?stény macskától származik. A Science cím? tudományos lapban publikált tanulmányt egy nemzetközi kutatócsoport készítette 979 házimacska és vadmacska genetikai összetételének vizsgálatával.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Állattenyésztés','https://hu.wikipedia.org/wiki/Állattenyésztés','A mez?gazdaság a nemzetgazdaság azon ágazata, amely magába foglalja a földm?velést és az állattenyésztést. A mez?gazdasági termelés folyhat önellátó, t?kés illetve kollektív keretek között. A mez?gazdasági termékeket önellátásra és eladásra lehet termelni. Elméleti részével a mez?gazdaság-tudomány foglalkozik.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Négyzet','https://hu.wikipedia.org/wiki/Négyzet','A köznyelvben a négyzetet is néha kockának nevezik, de a geometria szigorúan csak a 3 dimenziós testet nevezi kockának. A matematika más részterületein el?fordul, hogy az egységes kezelés érdekében különböz? dimenziós kockákról beszélnek.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Személyi jog','https://hu.wikipedia.org/wiki/Személyi_jog','A személyi viszonyokat szabályozó joganyag viszonylag elkülönült része, jogterülete a polgári jognak. A személyi jog már a 20. század elején kin?tt a polgári jog általános részéb?l, önálló jogterületté vált.');
Insert into FORRAS (CIM,HIVATKOZAS,TARTALOM) values ('Filozófia','https://hu.wikipedia.org/wiki/A_filozófia_alapkérdése','Az empiriokriticizmus (görög nyelvb?l: tapasztalatkritika) szubjektív idealista filozófiai áramlat, amely szerint a megismerés alaptörvénye a gondolkodás ökonomiája, gazdaságossága.');
REM INSERTING into HIBA_BEJELENTES
SET DEFINE OFF;
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Karl Marx','A születési és halálozási dátum között ? van.','elírás','_rudolf_');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Téglalap','A 360 után a fokjel helyett ? van írva.','elírás',';)_sacika_');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Alma','A többsége szó rosszul van írva.','helyesírási hiba','lali_nagy');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Madarak','Az állatok szó rosszul van írva.','helyesírási hiba','*petruska*');
Insert into HIBA_BEJELENTES (CIM,HIBAJELENTES,HIBANEV,FELHASZNALONEV) values ('Macska','A kisebb szó rosszul van írva.','helyesírási hiba','yvette');
REM INSERTING into KULCSSZO
SET DEFINE OFF;
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Bíróság','Jog','https://birosag.hu/birosagokrol/birosagi-szervezet/birosagi-szervezetrendszer');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Filozófia','Filozófia','https://zanza.tv/filozofia/filozofia/mi-filozofia');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Nyelvészet','Nyelvészet','https://wikiszotar.hu/ertelmezo-szotar/Nyelv%C3%A9szet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Szociológia','Szociológia','http://www.szociologia.eu/szociologia-fogalomtar');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Költészet','Költészet','https://wikiszotar.hu/ertelmezo-szotar/K%C3%B6lt%C3%A9szet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Madarak','Madár','http://madar.szojelentese.com/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Büntet?jog','Jog','https://buntetojog.info/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Alma','Alma','https://idegen-szavak-szotara.hu/alma-jelent%C3%A9se');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Rendszerfejlesztés','Informatika','https://hu.wikipedia.org/wiki/Rendszerfejleszt%C3%A9si_%C3%A9letciklus');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macskafajták','Macska','https://www.zooplus.hu/magazin/macska-magazin/macskafajtak');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Hardver','Informatika','https://informatika.gtportal.eu/?f0=alapfogalmak_25');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Almasav','Alma','https://www.tuja.hu/kerteszeti-lexikon/almasav.html');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Karl Marx','Filozófia','https://index.hu/tudomany/tortenelem/2018/05/05/marx_200/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Tulajdonnév','Nyelvtan','https://www.nkp.hu/tankonyv/magyar_nyelv_6_nat2020/lecke_01_008');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Számítógép-tudomány','Informatika','https://wiki.prog.hu/wiki/Mi_az_a_programoz%C3%A1s');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pet?fi Sándor','Költészet','http://magyar-irodalom.elte.hu/sulinet/igyjo/setup/portrek/petofi/petofi');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('C nyelv','Informatika','https://uni-obuda.hu/users/schuster.gyorgy/c.pdf');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Macska','Macska','https://wikiszotar.hu/ertelmezo-szotar/Macska');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Állattenyésztés','Agrár','http://users.atw.hu/torpepinscher/tartas-tenyesztes/tenyesztes-altalanos.php');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Kutya','Kutya','https://wikiszotar.hu/ertelmezo-szotar/Kutya');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Négyzet','Négyszög','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Atomenergia','Kémia','http://energiapedia.hu/atomenergia-felhasznalasa-atomeromuvek-magyaroszagon-es-a-vilagban');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Sakktábla földterület','Agrár','https://24.hu/kultura/2017/02/08/amerika-erdeiben-bujnak-meg-a-vilag-legnagyobb-sakktablai/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Gersgorin-tétel','Matematika','http://www.inf.u-szeged.hu/~kgelle/sites/default/files/upload/06_sajatertek_gersgorin.pdf');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Pitagorasz-tétel','Matematika','https://matekarcok.hu/pitagorasz-tetele/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Himnusz','Költészet','https://zanza.tv/fogalom/himnusz');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('K?olaj','Földrajz','https://xforest.hu/koolaj/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Személyi jog','Jog','https://ogyei.gov.hu/szemelyi_jog/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Present Perfect','Nyelvtan','https://angoltanulas.net/hirek/present-perfect/');
Insert into KULCSSZO (CIM,MEGNEVEZES,LINK) values ('Téglalap','Négyszög','https://www.amatematika.hu/a_teglalap_es_a_negyzet');
REM INSERTING into MODOSITAS
SET DEFINE OFF;
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Téglalap',to_date('10-FEB-22','DD-MON-RR'),'mesi_kurucz');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Filozófia',to_date('12-MAR-20','DD-MON-RR'),'_galambos_norbi_');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Büntet?jog',to_date('18-JUN-20','DD-MON-RR'),'marci79');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Költészet',to_date('20-MAR-21','DD-MON-RR'),'varga__timi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Hardver',to_date('27-JAN-22','DD-MON-RR'),'g_jani__72');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Szociológia',to_date('15-JUL-20','DD-MON-RR'),'gabi_holi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Állattenyésztés',to_date('02-FEB-22','DD-MON-RR'),'eszterrr');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Négyzet',to_date('13-AUG-21','DD-MON-RR'),'mesi_kurucz');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('Himnusz',to_date('09-DEC-21','DD-MON-RR'),'varga__timi');
Insert into MODOSITAS (CIM,MIKOR,FELHASZNALONEV) values ('C nyelv',to_date('22-SEP-21','DD-MON-RR'),'g_jani__72');
REM INSERTING into TEMAKOR
SET DEFINE OFF;
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Bíróság','Jog','Bíróság');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Filozófia','Filozófia','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Nyelvészet','Nyelvészet','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Szociológia','Szociológia','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Költészet','Költészet','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Madarak','Állat','Madár');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Büntet?jog','Jog','Büntet?jog');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Alma','Növény','Alma');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Rendszerfejlesztés','Informatika','Rendszerfejlesztés');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macskafajták','Állat','Macska');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Hardver','Informatika','Hardver');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Almasav','Természettudomány','Kémia');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Karl Marx','Filozófia','Karl Marx');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Tulajdonnév','Nyelvtan','Fogalom');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Számítógép-tudomány','Informatika','Programozás');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pet?fi Sándor','Költészet','Pet?fi Sándor');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('C nyelv','Informatika','Programozás');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Macska','Állat','Macska');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Állattenyésztés','Agrártudomány','Állattenyésztés');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Kutya','Állat','Kutya');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Négyzet','Matematika','Négyszög');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Atomenergia','Természettudomány','Kémia');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Sakktábla földterület','Agrártudomány','Földm?velés');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Gersgorin-tétel','Matematika','Tétel');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Pitagorasz-tétel','Matematika','Tétel');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Himnusz','Költészet','Himnusz');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('K?olaj','Természettudomány','Földrajz');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Present Perfect','Bölcsészettudomány','Angol');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Téglalap','Matematika','Négyszög');
Insert into TEMAKOR (CIM,NEV,ALTEMAKOR) values ('Személyi jog','Jog','Személyi jog');
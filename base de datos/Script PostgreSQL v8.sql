/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     22/12/2021 16:37:36                          */
/*==============================================================*/

--drop table ACTA;
--drop table FELIGRESES;
--drop table FELIGRESES_PADRE;
--drop table IGLESIA;
--drop table OCUPACION;
--drop table PADRE;
--drop table PADRE_SACRAMENTO;
--drop table PARROQUIA;
--drop table PERFIL_EDUCATIVO;
--drop table PERFIL_PARROQUIAL;
--drop table PERSONA;
--drop table PERSONA_SACRAMENTO;
--drop table ROL;
--drop table SACERDOTE;
--drop table SACRAMENTO;
--drop table SEXO;
--drop table TIPO;

/*==============================================================*/
/* Table: ACTA                                                  */
/*==============================================================*/
create table ACTA (
   ID_ACTA              SERIAL               not null,
   ID_IGLESIA           VARCHAR(5)           not null,
   ID_TIPO              VARCHAR(5)           not null,
   ID_SACRAMENTO        INT4                 not null,
   FECHA_EXPEDICION_ACTA DATE                 not null,
   constraint PK_ACTA primary key (ID_ACTA)
);

/*==============================================================*/
/* Table: FELIGRESES                                            */
/*==============================================================*/
create table FELIGRESES (
   ID_FELIGRES          SERIAL               not null,
   ID_PERFIL_EDUCATIVO  VARCHAR(5)           null,
   ID_SEXO              VARCHAR(5)           null,
   ID_PERFIL_PARROQUIAL VARCHAR(5)           null,
   ID_SACRAMENTO        INT4                 not null,
   DNI_FELIGRES         VARCHAR(10)          not null,
   NOMBRE_FELIGRES      VARCHAR(50)          not null,
   FECHA_NACIMIENTO_FELIGRES DATE                 null,
   LUGAR_NACIMIENTO_FELIGRES VARCHAR(100)         null,
   DIRECCION_FELIGRES   VARCHAR(100)         null,
   FECHA_EXPEDICION_DNI DATE                 null,
   FOTO_FELIGRES        CHAR(254)            null,
   constraint PK_FELIGRESES primary key (ID_FELIGRES)
);

/*==============================================================*/
/* Table: FELIGRESES_PADRE                                      */
/*==============================================================*/
create table FELIGRESES_PADRE (
   ID_FELIGRES          INT4                 not null,
   ID_PADRE             INT4                 not null,
   constraint PK_FELIGRESES_PADRE primary key (ID_FELIGRES, ID_PADRE)
);

/*==============================================================*/
/* Table: IGLESIA                                               */
/*==============================================================*/
create table IGLESIA (
   ID_IGLESIA           VARCHAR(5)           not null,
   ID_PARROQUIA         VARCHAR(5)           not null,
   ID_SACERDOTE         VARCHAR(5)           not null,
   NOMBRE_IGLESIA       VARCHAR(100)         not null,
   DIRECCION_IGLESIA    VARCHAR(100)         not null,
   TELEFONO_IGLESIA     VARCHAR(10)          not null,
   constraint PK_IGLESIA primary key (ID_IGLESIA)
);

/*==============================================================*/
/* Table: OCUPACION                                             */
/*==============================================================*/
create table OCUPACION (
   ID_OCUPACION         VARCHAR(5)           not null,
   NOMBRE_OCUPACION     VARCHAR(100)         not null,
   constraint PK_OCUPACION primary key (ID_OCUPACION)
);

/*==============================================================*/
/* Table: PADRE                                                 */
/*==============================================================*/
create table PADRE (
   ID_PADRE             SERIAL               not null,
   ID_OCUPACION         VARCHAR(5)           null,
   ID_PERFIL_PARROQUIAL VARCHAR(5)           null,
   NOMBRE_PADRE         VARCHAR(100)         not null,
   FECHA_NACIMIENTO     DATE                 null,
   CELULAR_PADRE        VARCHAR(10)          null,
   constraint PK_PADRE primary key (ID_PADRE)
);

/*==============================================================*/
/* Table: PADRE_SACRAMENTO                                      */
/*==============================================================*/
create table PADRE_SACRAMENTO (
   ID_PADRE             INT4                 not null,
   ID_SACRAMENTO        INT4                 not null,
   constraint PK_PADRE_SACRAMENTO primary key (ID_SACRAMENTO, ID_PADRE)
);

/*==============================================================*/
/* Table: PARROQUIA                                             */
/*==============================================================*/
create table PARROQUIA (
   ID_PARROQUIA         VARCHAR(5)           not null,
   NOMBRE_PARROQUIA     VARCHAR(100)         not null,
   constraint PK_PARROQUIA primary key (ID_PARROQUIA)
);

/*==============================================================*/
/* Table: PERFIL_EDUCATIVO                                      */
/*==============================================================*/
create table PERFIL_EDUCATIVO (
   ID_PERFIL_EDUCATIVO  VARCHAR(5)           not null,
   NOMBRE_INSTITUCION   VARCHAR(100)         not null,
   NIVEL_DE_ESTUDIO     VARCHAR(50)          not null,
   constraint PK_PERFIL_EDUCATIVO primary key (ID_PERFIL_EDUCATIVO)
);

/*==============================================================*/
/* Table: PERFIL_PARROQUIAL                                     */
/*==============================================================*/
create table PERFIL_PARROQUIAL (
   ID_PERFIL_PARROQUIAL VARCHAR(5)           not null,
   ID_PARROQUIA         VARCHAR(5)           not null,
   SACRAMENTO_FECHA     DATE                 not null,
   constraint PK_PERFIL_PARROQUIAL primary key (ID_PERFIL_PARROQUIAL)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   ID_PERSONA           VARCHAR(5)           not null,
   ID_ROL               VARCHAR(5)           not null,
   NOMBRE_PERSONA       VARCHAR(100)         not null,
   constraint PK_PERSONA primary key (ID_PERSONA)
);

/*==============================================================*/
/* Table: PERSONA_SACRAMENTO                                    */
/*==============================================================*/
create table PERSONA_SACRAMENTO (
   ID_PERSONA           VARCHAR(5)           not null,
   ID_SACRAMENTO        INT4                 not null,
   constraint PK_PERSONA_SACRAMENTO primary key (ID_PERSONA, ID_SACRAMENTO)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   ID_ROL               VARCHAR(5)           not null,
   NOMBRE_ROL           VARCHAR(50)          not null,
   constraint PK_ROL primary key (ID_ROL)
);

/*==============================================================*/
/* Table: SACERDOTE                                             */
/*==============================================================*/
create table SACERDOTE (
   ID_SACERDOTE         VARCHAR(5)           not null,
   NOMBRE_SACERDOTE     VARCHAR(100)         not null,
   CEREMONIAS_CELEBRADAS NUMERIC              not null,
   constraint PK_SACERDOTE primary key (ID_SACERDOTE)
);

/*==============================================================*/
/* Table: SACRAMENTO                                            */
/*==============================================================*/
create table SACRAMENTO (
   ID_SACRAMENTO        SERIAL               not null,
   ID_SACERDOTE         VARCHAR(5)           not null,
   ID_TIPO              VARCHAR(5)           not null,
   FECHA_SACRAMENTO     DATE                 not null,
   constraint PK_SACRAMENTO primary key (ID_SACRAMENTO)
);

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
create table SEXO (
   ID_SEXO              VARCHAR(5)           not null,
   NOMBRE_SEXO          VARCHAR(10)          not null,
   constraint PK_SEXO primary key (ID_SEXO)
);

/*==============================================================*/
/* Table: TIPO                                                  */
/*==============================================================*/
create table TIPO (
   ID_TIPO              VARCHAR(5)           not null,
   NOMBRE_TIPO          VARCHAR(50)          not null,
   constraint PK_TIPO primary key (ID_TIPO)
);

alter table ACTA
   add constraint FK_ACTA_GENERA_IGLESIA foreign key (ID_IGLESIA)
      references IGLESIA (ID_IGLESIA)
      on delete restrict on update restrict;

alter table ACTA
   add constraint FK_ACTA_PARTE_SACRAMEN foreign key (ID_SACRAMENTO)
      references SACRAMENTO (ID_SACRAMENTO)
      on delete restrict on update restrict;

alter table ACTA
   add constraint FK_ACTA_TIENE_TIPO foreign key (ID_TIPO)
      references TIPO (ID_TIPO)
      on delete restrict on update restrict;

alter table FELIGRESES
   add constraint FK_FELIGRES_CELEBRAN_SACRAMEN foreign key (ID_SACRAMENTO)
      references SACRAMENTO (ID_SACRAMENTO)
      on delete restrict on update restrict;

alter table FELIGRESES
   add constraint FK_FELIGRES_RELATIONS_SEXO foreign key (ID_SEXO)
      references SEXO (ID_SEXO)
      on delete restrict on update restrict;

alter table FELIGRESES
   add constraint FK_FELIGRES_RELATIONS_PERFIL_P foreign key (ID_PERFIL_PARROQUIAL)
      references PERFIL_PARROQUIAL (ID_PERFIL_PARROQUIAL)
      on delete restrict on update restrict;

alter table FELIGRESES
   add constraint FK_FELIGRES_RELATIONS_PERFIL_E foreign key (ID_PERFIL_EDUCATIVO)
      references PERFIL_EDUCATIVO (ID_PERFIL_EDUCATIVO)
      on delete restrict on update restrict;

alter table FELIGRESES_PADRE
   add constraint FK_FELIGRES_DESCIENDE_FELIGRES foreign key (ID_FELIGRES)
      references FELIGRESES (ID_FELIGRES)
      on delete restrict on update restrict;

alter table FELIGRESES_PADRE
   add constraint FK_FELIGRES_DESCIENDE_PADRE foreign key (ID_PADRE)
      references PADRE (ID_PADRE)
      on delete restrict on update restrict;

alter table IGLESIA
   add constraint FK_IGLESIA_ADMINISTR_SACERDOT foreign key (ID_SACERDOTE)
      references SACERDOTE (ID_SACERDOTE)
      on delete restrict on update restrict;

alter table IGLESIA
   add constraint FK_IGLESIA_SE_UBICA_PARROQUI foreign key (ID_PARROQUIA)
      references PARROQUIA (ID_PARROQUIA)
      on delete restrict on update restrict;

alter table PADRE
   add constraint FK_PADRE_COMPETE_OCUPACIO foreign key (ID_OCUPACION)
      references OCUPACION (ID_OCUPACION)
      on delete restrict on update restrict;

alter table PADRE
   add constraint FK_PADRE_RELATIONS_PERFIL_P foreign key (ID_PERFIL_PARROQUIAL)
      references PERFIL_PARROQUIAL (ID_PERFIL_PARROQUIAL)
      on delete restrict on update restrict;

alter table PADRE_SACRAMENTO
   add constraint FK_PADRE_SA_ASISTEN_SACRAMEN foreign key (ID_SACRAMENTO)
      references SACRAMENTO (ID_SACRAMENTO)
      on delete restrict on update restrict;

alter table PADRE_SACRAMENTO
   add constraint FK_PADRE_SA_ASISTEN2_PADRE foreign key (ID_PADRE)
      references PADRE (ID_PADRE)
      on delete restrict on update restrict;

alter table PERFIL_PARROQUIAL
   add constraint FK_PERFIL_P_RELATIONS_PARROQUI foreign key (ID_PARROQUIA)
      references PARROQUIA (ID_PARROQUIA)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_PERTENECE_ROL foreign key (ID_ROL)
      references ROL (ID_ROL)
      on delete restrict on update restrict;

alter table PERSONA_SACRAMENTO
   add constraint FK_PERSONA__CONCURREN_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on delete restrict on update restrict;

alter table PERSONA_SACRAMENTO
   add constraint FK_PERSONA__CONCURREN_SACRAMEN foreign key (ID_SACRAMENTO)
      references SACRAMENTO (ID_SACRAMENTO)
      on delete restrict on update restrict;

alter table SACRAMENTO
   add constraint FK_SACRAMEN_CELEBRA_SACERDOT foreign key (ID_SACERDOTE)
      references SACERDOTE (ID_SACERDOTE)
      on delete restrict on update restrict;

alter table SACRAMENTO
   add constraint FK_SACRAMEN_RELATIONS_TIPO foreign key (ID_TIPO)
      references TIPO (ID_TIPO)
      on delete restrict on update restrict;


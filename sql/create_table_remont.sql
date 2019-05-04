/*- 1 --- создание таблицы по ремонту ----------*/

CREATE TABLE graf_zaporn
(
  "id" integer NOT NULL,                   /* id ремонта в базе                          */
  "TYPE_REMONT" character varying,         /* тип ремонта (ремонт, замена, т/о)     *    */
  "ADRES_REMONT" character varying,        /* адрес ремонта                              */
  "OPISANIE_DOCUMENT" character varying,   /* описывающий документ                  *    */
  "OPISANIE_REMONT" character varying,     /* описывающий ремонт                         */
  "SPOSOB_PROKLADKI" character varying,    /* способ прокладки                           */
  "DIAMETR_ZAMEN" double precision,        /* диаметр замененного участка           *    */
  "DIAMETR_ISSET" double precision,        /* диаметр существующего участка              */
  "DLINA_UCHSTKA" double precision,        /* длина участка                         *    */
  "OTVET_LICO" double precision,           /* ответственное лицо                    *    */
  "DATE_BEGIN" date NOT NULL,             /* дата начала ремонта                    *    */
  "DATE_END" date NOT NULL,               /* дата окочания ремонта                  *    */
  PRIMARY KEY ("id")
);
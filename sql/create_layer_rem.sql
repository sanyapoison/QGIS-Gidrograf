CREATE TABLE graf_istochnik
(
  "id" integer NOT NULL,            /* id источника в базе                                  */
  "SYS" integer NOT NULL,           /* id источника на предприятии                          */
  "NAME" character varying,         /* название источника                                   */
  "ADRES" character varying,        /* адрес источника                                      */

  
  PRIMARY KEY ("id")
);
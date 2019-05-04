
/*- 1 --- создание таблицы участок ----------*/

CREATE TABLE graf_uchastok
(
  "id" integer NOT NULL,            /* id участка в базе            */
  "SYS" integer NOT NULL,           /* id участка на предприятии    */
  "BEGIN_UCH" character varying,    /* начало участка               */
  "END_UCH" character varying,      /* конец участка                */
  "L_UCH" character varying,        /* длина участка                */
  "D_UCH" double precision,         /* внутренний диаметр трубы     */
  "THICKNESS" double precision,     /* толщина стенки               */
  "NIST" character varying,         /* номер источника              */
  "TUBES_UCH" double precision,     /* материал трубы               */
  "YEAR_UCH" date NOT NULL,         /* год прокладки                */
  "DEPTH_UCH" double precision,     /* средняя глубина прокладки    */
  "GROUND_UCH" character varying,   /* состояние грунта             */  
  PRIMARY KEY ("id")
);

/*- 2 --- создание таблицы источника ----------*/

CREATE TABLE graf_istochnik
(
  "id" integer NOT NULL,            /* id источника в базе                                  */
  "SYS" integer NOT NULL,           /* id источника на предприятии                          */
  "NAME" character varying,         /* название источника                                   */
  "ADRES" character varying,        /* адрес источника                                      */
  "NIST" integer NOT NULL,          /* номер источника                                      */
  "H_GEO" double precision,         /* отметка оси трубы, выходящей из данного источника    */
  "H_UP" double precision,          /* высота воды в источнике                              */
  "D_UP" double precision,          /* диаметр выходного отверстия                          */
  "HW_UP" double precision,         /* высота выходного отверстия                           */
  "MARK" character varying,         /* марка насоса                                         */
  "NPUMP" integer NOT NULL,         /* количество паралелльных насосов                      */
  "II_INER" double precision,       /* момент инерции агрегата                              */
  "WMOTOR" integer NOT NULL,        /* можность мотора                                      */
  "HI_NAPOR" double precision,      /* полный напор на выходе                               */
  "PI_NAPOR" double precision,      /* напор на выходе                                      */
  "G_RASHOD" character varying,     /* расход воды                                          */
  PRIMARY KEY ("id")
);

/*- 3 --- создание таблицы узел ----------*/

CREATE TABLE graf_kolodez
(
  "id" integer NOT NULL,            /* id узла в базе                                  */
  "SYS" integer NOT NULL,           /* id узла на предприятии                          */
  "NAME" character varying,         /* название узла                                   */
  "ADRES" character varying,        /* адрес узла                                      */
  "H_GEO" double precision,         /* отметка оси трубы, выходящей из данного узла    */
  "HI_NAPOR" double precision,      /* полный напор на выходе                          */
  "PI_NAPOR" double precision,      /* напор на выходе                                 */
  "TIME" time NOT NULL,             /* время прохождения воды от источника             */
  "DIST" double precision,          /* путь пройденный от источника                    */
  "NIST" integer NOT NULL,          /* номер источника                                 */
  PRIMARY KEY ("id")
);

/*- 4 --- создание таблицы водонапорной башни ----------*/

CREATE TABLE graf_vod_bach
(
  "id" integer NOT NULL,            /* id водонапорной башни в базе                         */
  "SYS" integer NOT NULL,           /* id водонапорной башни на предприятии                 */
  "NAME" character varying,         /* название водонапорной башни                          */
  "NIST" integer NOT NULL,          /* номер название водонапорной башни                    */
  "ADRES" character varying,        /* адрес название водонапорной башни                    */
  "H_GEO" double precision,         /* отметка оси трубы, выходящей из водонапорной башни   */
  "H_UP" double precision,          /* высота воды в водонапорной башне                     */  
  "H_MAX" double precision,         /* максимальная отметка воды в водонапорной башне       */  
  "H_MIN" double precision,         /* минимальная отметка воды в водонапорной башне        */  
  "V_ZAPAS" double precision,       /* запас воды в водонапорной башне                      */  
  "G_RASHOD" double precision,      /* расход воды                                          */
  "PI_NAPOR" double precision,      /* напор на выходе                                      */    
  PRIMARY KEY ("id")
);

/*- 5 --- создание таблицы контррезервуара ----------*/

CREATE TABLE graf_kontrrez
(
  "id" integer NOT NULL,            /* id контррезервуара в базе                        */
  "SYS" integer NOT NULL,           /* id контррезервуара на предприятии                */
  "NIST" integer NOT NULL,          /* номер контррезервуара                            */
  "NAME" character varying,         /* название контррезервуара                         */
  "ADRES" character varying,        /* адрес контррезервуара                            */
  "H_GEO" double precision,         /* отметка оси трубы, выходящей из контррезервуара  */
  "H_UP" double precision,          /* высота воды в контррезервуаре                    */  
  "H_MAX" double precision,         /* максимальная отметка воды в контррезервуаре      */  
  "H_MIN" double precision,         /* минимальная отметка воды в контррезервуаре       */  
  "V_ZAPAS" double precision,       /* запас воды в контррезервуаре                     */  
  "G_RASHOD" double precision,      /* расход воды                                      */
  "PI_NAPOR" double precision,      /* напор на выходе                                  */    
  PRIMARY KEY ("id")
);

/*- 6 --- создание таблицы насоса ----------*/

CREATE TABLE graf_nasos
(
  "id" integer NOT NULL,            /* id насоса в базе                        */
  "SYS" integer NOT NULL,           /* id насоса на предприятии                */
  "NAME" character varying,         /* название насоса                         */  
  "H_GEO" double precision,         /* отметка оси трубы, выходящей из насоса  */
  "TYPE" character varying,         /* тип насоса                              */
  "MARK" character varying,         /* марка насоса                            */
  "HR_UP" double precision,         /* номинальный напор насоса                */  
  "PI_UP" double precision,         /* номинальный напор на выходе             */    
  "H_MAX" double precision,         /* максимальная отметка воды в насоса      */  
  "H_MIN" double precision,         /* минимальная отметка воды в насоса       */  
  "V_ZAPAS" double precision,       /* запас воды в насоса                     */  
  "G_RASHOD" double precision,      /* расход воды                             */
  PRIMARY KEY ("id")
);

/*- 7 --- создание таблицы потребителя ----------*/

CREATE TABLE graf_potrebit
(
  "id" integer NOT NULL,            /* id потребителя в базе                        */
  "SYS" integer NOT NULL,           /* id потребителя на предприятии                */
  "NAME" character varying,         /* название потребителя                         */
  "ADRES" character varying,        /* адрес потребителя                            */
  "H_GEO" double precision,         /* отметка оси трубы, входящей в дом            */
  "G_RASHOD" double precision,      /* расход воды                                  */
  "H_MIN" double precision,         /* минимальный напор воды                       */  
  "USE_TYPE" character varying,     /* категория потребителя                        */
  "NIST" integer NOT NULL,          /* номер источника                              */
  PRIMARY KEY ("id")
);

/*- 8 --- создание таблицы запорной арматуры ----------*/

CREATE TABLE graf_zaporn
(
  "id" integer NOT NULL,            /* id запорной арматуры в базе                        */
  "SYS" integer NOT NULL,           /* id запорной арматуры на предприятии                */
  "NAME" character varying,         /* название запорной арматуры                         */
  "H_GEO" double precision,         /* отметка оси трубы на которое установлено з.а.      */
  "MARK" character varying,         /* марка запорной арматуры                            */
  "TYPE" character varying,         /* тип запорной арматуры                              */
  "D_UP" double precision,          /* условный диаметр                                   */
  "PERCENT" double precision,       /* степень открытости                                 */
  "NIST" integer NOT NULL,          /* номер источника                                    */
  PRIMARY KEY ("id")
);

/*- 9 --- создание таблицы обратного клапана ----------*/

CREATE TABLE graf_back_klapan
(
  "id" integer NOT NULL,            /* id обратного клапана в базе                        */
  "SYS" integer NOT NULL,           /* id обратного клапана на предприятии                */
  "NAME" character varying,         /* название обратного клапана                         */
  "ADRES" character varying,        /* адрес обратного клапана                            */
  "H_GEO" double precision,         /* отметка оси трубы на которое установлено з.а.      */
  "KZ_RES" double precision,        /* крэфициент местного сопротивления                  */
  "D_UP" double precision,          /* условный диаметр                                   */
  "NIST" integer NOT NULL,          /* номер источника                                    */
  PRIMARY KEY ("id")
);

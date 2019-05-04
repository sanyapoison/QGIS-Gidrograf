/*------- создание слоя вершин -------*/

CREATE TABLE graf_ver
(
  "id" integer NOT NULL,  
  "geom"  geometry(Point,4326),
  "NAME"  character varying,
  "TYPE"  character varying,
  "SMEG"  character varying,
  "ADRES" character varying,
  PRIMARY KEY ("id")
);

/*------- создание слоя ребер -------*/

CREATE TABLE graf_reb
(
  "id" integer NOT NULL,    
  "geom" geometry(LineString,4326),
  "NAME" character varying, 
  "OUT_VER" character varying,
  "IN_VER" character varying, 
  "TYPE" character varying, 
  "ADRES" character varying, 
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS depart CASCADE;

create table depart
(
    id              bigserial    primary key,
    denominacion    varchar(255) NOT NULL,
    localidad       varchar(255)
);

INSERT INTO depart (denominacion, localidad)
     VALUES ('Contabilidad', 'Sanlucar'),
            ('Informática', 'Jerez de la Frontera'),
            ('Ingles', 'Londres'),
            ('Matematicas', 'Trebujena'),
            ('Cibernética', 'Chipiona');


DROP TABLE IF EXISTS emple CASCADE;

CREATE TABLE emple
(
    id        bigserial PRIMARY KEY,
    nombre    varchar(255) NOT NULL,
    fecha_alt timestamp,
    salario   numeric(6, 2),
    depart_id bigint NOT NULL REFERENCES depart (id)

);

INSERT INTO emple (nombre, fecha_alt, salario, depart_id)
     VALUES ('Manolo', '2019-12-04 17:00:00', 2340.75, 2),
            ('Rosa', '2020-04-05 14:00:00', 2874.99, 4);
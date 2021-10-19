DROP TABLE IF EXISTS depart CASCADE;

create table depart
(
    id        bigserial    primary key,
    nombre    varchar(255) NOT NULL,
    localidad varchar(255)
);

INSERT INTO depart (nombre, localidad)
     VALUES ('Contabilidad', 'Sanlucar'),
            ('Informática', 'Jerez de la Frontera'),
            ('Ingles', 'Londres'),
            ('Matematicas', 'Trebujena'),
            ('Cibernética', 'Chipiona');
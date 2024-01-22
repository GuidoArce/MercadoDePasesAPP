use mercado_pases_app;

create table equipos(
id_eq int unsigned auto_increment,
nom_eq varchar(50),
constraint pk_eq primary key (id_eq)
);

create table jugadores(
id_jugador int unsigned auto_increment,
id_eq int unsigned,
nombre_jugador varchar(50),
apellido varchar (50),
constraint pk_id_jugador primary key (id_jugador),
constraint fk_id_equipo foreign key (id_eq) references equipos (id_eq)
);

create table partidos(
id_partido int unsigned auto_increment,
id_eq_local int unsigned,
id_eq_visitante int unsigned,
fecha datetime,
constraint pk_id_partido primary key (id_partido),
constraint fk_local foreign key (id_eq_local) references equipos (id_eq),
constraint fk_visitante foreign key (id_eq_visitante) references equipos (id_eq),
constraint check (id_eq_local <> id_eq_visitante)
);

create table jugadores_x_equipo_x_partido(
id_jugador int unsigned,
id_partido int unsigned,
puntos int unsigned,
rebotes int unsigned,
asistencias int unsigned,
minutos int unsigned,
faltas int unsigned,
constraint pk_jugador_partido primary key (id_jugador, id_partido),
constraint fk_id_jugador foreign key (id_jugador) references jugadores (id_jugador),
constraint fk_id_partido foreign key (id_partido) references partidos (id_partido)
);


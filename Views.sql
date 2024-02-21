USE MERCADO_PASES_APP;

CREATE VIEW vista_partidos_por_jugador AS
SELECT 
    j.nombre_jugador,
    j.apellido,
    MIN(jep.id_partido) as id_partido_primero,
    MAX(jep.id_partido) as id_partido_ultimo,
    MIN(p.fecha) as primera_fecha,
    MAX(p.fecha) as ultima_fecha
FROM 
    jugadores_x_equipo_x_partido jep 
    INNER JOIN jugadores j ON jep.id_jugador = j.id_jugador
    INNER JOIN partidos p ON jep.id_partido = p.id_partido
GROUP BY 
    j.nombre_jugador, j.id_jugador;
    


CREATE VIEW vista_ranking_promedio_puntos AS
SELECT 
    j.nombre_jugador,
    j.apellido,
    AVG(jep.puntos) as promedio_puntos
FROM 
    jugadores j 
    INNER JOIN jugadores_x_equipo_x_partido jep ON j.id_jugador = jep.id_jugador
GROUP BY 
    j.nombre_jugador, j.apellido; 



CREATE VIEW vista_puntos_por_jugador 
AS
    SELECT 
        j.nombre_jugador, 
        j.apellido, 
        jep.id_partido, 
        SUM(jep.puntos) as total_puntos
    FROM 
        jugadores_x_equipo_x_partido jep
        INNER JOIN jugadores j ON jep.id_jugador = j.id_jugador
    GROUP BY 
        jep.id_jugador, jep.id_partido;






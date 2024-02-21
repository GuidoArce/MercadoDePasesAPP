USE MERCADO_PASES_APP;

DELIMITER //
CREATE PROCEDURE actualizar_puntos_jugador (
    IN id_jugador INT,
    IN id_partido INT,
    IN puntos INT
)
BEGIN
    UPDATE jugadores_x_equipo_x_partido
    SET puntos = puntos
    WHERE id_jugador = id_jugador AND id_partido = id_partido;
END//
DELIMITER ; 

DELIMITER //
CREATE PROCEDURE actualizar_rebotes_jugador (IN jugador_id INT, IN partido_id INT,IN rebotes INT)
BEGIN
    UPDATE jugadores_x_equipo_x_partido
    SET rebotes = rebotes
    WHERE id_jugador = id_jugador AND id_partido = id_partido;
END//
DELIMITER ;  
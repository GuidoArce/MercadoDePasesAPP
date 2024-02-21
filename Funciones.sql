USE MERCADO_PASES_APP;

DELIMITER //
CREATE FUNCTION calcular_promedio_puntos(id_jugador_param INT) 
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    
    SELECT AVG(puntos) INTO promedio
    FROM jugadores_x_equipo_x_partido
    WHERE id_jugador = id_jugador_param;
    
    IF promedio IS NULL THEN
        RETURN 'El jugador no tiene puntos registrados';
    ELSE
        RETURN CAST(promedio AS CHAR);
    END IF;
END//
DELIMITER ; 

DELIMITER //
CREATE FUNCTION calcular_total_faltas (jugador_id INT, partido_id INT) 
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE total_faltas INT;

    SELECT SUM(faltas) INTO total_faltas
    FROM jugadores_x_equipo_x_partido
    WHERE id_jugador = jugador_id AND id_partido = partido_id;

    IF total_faltas IS NULL THEN
        RETURN 'El jugador no jugó ese partido o no hizo faltas en él';
    ELSE
        RETURN CAST(total_faltas AS CHAR);
    END IF;
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION obtener_puntos_por_jugador (jugador_id INT, partido_id INT)
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE total_puntos INT;

    SELECT puntos INTO total_puntos
    FROM jugadores_x_equipo_x_partido
    WHERE id_jugador = jugador_id AND id_partido = partido_id;

    IF total_puntos IS NULL THEN
        RETURN 'El jugador no jugó ese partido o no hizo puntos en él';
    ELSE
        RETURN CAST(total_puntos AS CHAR);
    END IF;
END //
DELIMITER ;
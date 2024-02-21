INSERT INTO equipos (nom_eq) 
VALUES 
('Los Angeles Lakers'),
('Golden State Warriors'),
('Boston Celtics'),
('Miami Heat');  

INSERT INTO jugadores (id_eq, nombre_jugador, apellido) 
VALUES 
(1, 'LeBron', 'James'),
(1, 'Anthony', 'Davis'),
(1, 'Russell', 'Westbrook'),
(1, 'Carmelo', 'Anthony'),
(1, 'Dwight', 'Howard'),
(2, 'Stephen', 'Curry'),
(2, 'Klay', 'Thompson'),
(2, 'Draymond', 'Green'),
(2, 'Andrew', 'Wiggins'),
(2, 'Andre', 'Iguodala'),
(3, 'Jayson', 'Tatum'),
(3, 'Jaylen', 'Brown'),
(3, 'Marcus', 'Smart'),
(3, 'Al', 'Horford'),
(3, 'Dennis', 'Schroder'),
(4, 'Jimmy', 'Butler'),
(4, 'Bam', 'Adebayo'),
(4, 'Kyle', 'Lowry'),
(4, 'Tyler', 'Herro'),
(4, 'Duncan', 'Robinson'); 

INSERT INTO partidos (id_eq_local, id_eq_visitante, fecha) 
VALUES 
(1, 2, '2024-01-05 18:00:00'), -- Lakers vs. Warriors
(2, 1, '2024-01-10 19:30:00'), -- Warriors vs. Lakers
(3, 4, '2024-01-15 20:00:00'), -- Celtics vs. Heat
(4, 3, '2024-01-20 17:45:00'), -- Heat vs. Celtics
(1, 3, '2024-01-25 21:15:00'), -- Lakers vs. Celtics
(3, 1, '2024-01-30 18:30:00'), -- Celtics vs. Lakers
(2, 4, '2024-01-08 19:00:00'), -- Warriors vs. Heat
(4, 2, '2024-01-12 20:45:00'); -- Heat vs. Warriors 


INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 1: Lakers vs. Warriors
(1, 1, 25, 8, 10, 38, 2), -- LeBron James
(2, 1, 20, 10, 5, 36, 3), -- Anthony Davis
(3, 1, 15, 6, 8, 32, 1), -- Russell Westbrook
(4, 1, 10, 4, 3, 28, 4), -- Carmelo Anthony
(5, 1, 8, 12, 4, 25, 2), -- Dwight Howard
(6, 1, 30, 5, 6, 40, 3), -- Stephen Curry
(7, 1, 22, 6, 9, 35, 2), -- Klay Thompson
(8, 1, 18, 4, 7, 33, 3), -- Draymond Green
(9, 1, 12, 8, 4, 28, 2), -- Andrew Wiggins
(10, 1, 10, 3, 5, 25, 3); -- Andre Iguodala

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 2: Warriors vs. Lakers
(6, 2, 28, 6, 9, 38, 2), -- Stephen Curry
(7, 2, 25, 7, 8, 36, 3), -- Klay Thompson
(8, 2, 20, 5, 7, 34, 1), -- Draymond Green
(9, 2, 15, 9, 3, 30, 4), -- Andrew Wiggins
(10, 2, 10, 4, 4, 26, 2), -- Andre Iguodala
(1, 2, 30, 9, 11, 40, 3), -- LeBron James
(2, 2, 22, 12, 6, 37, 2), -- Anthony Davis
(3, 2, 18, 7, 8, 35, 3), -- Russell Westbrook
(4, 2, 14, 6, 5, 30, 2), -- Carmelo Anthony
(5, 2, 8, 10, 4, 25, 3); -- Dwight Howard

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 3: Celtics vs. Heat
(11, 3, 28, 9, 10, 38, 2), -- Jayson Tatum
(12, 3, 25, 11, 5, 36, 3), -- Jaylen Brown
(13, 3, 20, 8, 7, 34, 1), -- Marcus Smart
(14, 3, 15, 7, 3, 32, 4), -- Al Horford
(15, 3, 10, 13, 6, 28, 2), -- Dennis Schroder
(16, 3, 30, 8, 8, 40, 3), -- Jimmy Butler
(17, 3, 22, 10, 7, 35, 2), -- Bam Adebayo
(18, 3, 18, 6, 5, 33, 3), -- Kyle Lowry
(19, 3, 14, 9, 4, 30, 2), -- Tyler Herro
(20, 3, 8, 11, 3, 25, 3); -- Duncan Robinson

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 4: Heat vs. Celtics
(16, 4, 28, 7, 9, 38, 2), -- Jimmy Butler
(17, 4, 25, 9, 8, 36, 3), -- Bam Adebayo
(18, 4, 20, 6, 7, 34, 1), -- Kyle Lowry
(19, 4, 15, 8, 3, 30, 4), -- Tyler Herro
(20, 4, 10, 12, 6, 28, 2), -- Duncan Robinson
(11, 4, 30, 8, 11, 40, 3), -- Jayson Tatum
(12, 4, 22, 10, 6, 37, 2), -- Jaylen Brown
(13, 4, 18, 7, 8, 35, 3), -- Marcus Smart
(14, 4, 14, 6, 5, 30, 2), -- Al Horford
(15, 4, 8, 10, 4, 25, 3); -- Dennis Schroder

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 5: Lakers vs. Celtics
(1, 5, 25, 9, 10, 38, 2), -- LeBron James
(2, 5, 20, 11, 5, 36, 3), -- Anthony Davis
(3, 5, 15, 8, 8, 32, 1), -- Russell Westbrook
(4, 5, 10, 6, 3, 28, 4), -- Carmelo Anthony
(5, 5, 8, 12, 4, 25, 2), -- Dwight Howard
(11, 5, 28, 10, 8, 38, 2), -- Jayson Tatum
(12, 5, 25, 12, 7, 36, 3), -- Jaylen Brown
(13, 5, 20, 7, 6, 34, 1), -- Marcus Smart
(14, 5, 15, 9, 3, 30, 4), -- Al Horford
(15, 5, 10, 8, 5, 28, 2); -- Dennis Schroder

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 6: Celtics vs. Lakers
(11, 6, 28, 9, 10, 38, 2), -- Jayson Tatum
(12, 6, 25, 11, 5, 36, 3), -- Jaylen Brown
(13, 6, 20, 8, 7, 34, 1), -- Marcus Smart
(14, 6, 15, 7, 3, 32, 4), -- Al Horford
(15, 6, 10, 13, 6, 28, 2), -- Dennis Schroder
(1, 6, 30, 9, 11, 40, 3), -- LeBron James
(2, 6, 22, 12, 6, 37, 2), -- Anthony Davis
(3, 6, 18, 7, 8, 35, 3), -- Russell Westbrook
(4, 6, 14, 6, 5, 30, 2), -- Carmelo Anthony
(5, 6, 8, 10, 4, 25, 3); -- Dwight Howard

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 7: Warriors vs. Heat
(6, 7, 28, 6, 9, 38, 2), -- Stephen Curry
(7, 7, 25, 7, 8, 36, 3), -- Klay Thompson
(8, 7, 20, 5, 7, 34, 1), -- Draymond Green
(9, 7, 15, 9, 3, 30, 4), -- Andrew Wiggins
(10, 7, 10, 4, 4, 26, 2), -- Andre Iguodala
(16, 7, 30, 8, 8, 40, 3), -- Jimmy Butler
(17, 7, 22, 10, 7, 35, 2), -- Bam Adebayo
(18, 7, 18, 6, 5, 33, 3), -- Kyle Lowry
(19, 7, 14, 9, 4, 30, 2), -- Tyler Herro
(20, 7, 8, 11, 3, 25, 3); -- Duncan Robinson

INSERT INTO jugadores_x_equipo_x_partido (id_jugador, id_partido, puntos, rebotes, asistencias, minutos, faltas) 
VALUES 
-- Partido 8: Heat vs. Warriors
(16, 8, 28, 7, 9, 38, 2), -- Jimmy Butler
(17, 8, 25, 9, 8, 36, 3), -- Bam Adebayo
(18, 8, 20, 6, 7, 34, 1), -- Kyle Lowry
(19, 8, 15, 8, 3, 30, 4), -- Tyler Herro
(20, 8, 10, 12, 6, 28, 2), -- Duncan Robinson
(6, 8, 30, 6, 11, 40, 3), -- Stephen Curry
(7, 8, 22, 7, 6, 37, 2), -- Klay Thompson
(8, 8, 18, 5, 8, 35, 3), -- Draymond Green
(9, 8, 14, 9, 5, 30, 2), -- Andrew Wiggins
(10, 8, 8, 10, 4, 25, 3); -- Andre Iguodala






-- Estructura inicial de la base de datos para el simulador
-- Creado por: Keyla Fernández (Semana 2)

CREATE TABLE IF NOT EXISTS pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edad INT NOT NULL CHECK (edad >= 0),
    colesterol_total INT NULL CHECK (colesterol_total > 0),
    presion_sistolica FLOAT NOT NULL CHECK (presion_sistolica > 0),
    presion_diastolica FLOAT NOT NULL CHECK (presion_diastolica > 0),
    glucosa INT NOT NULL CHECK (glucosa > 0),
    fumador TINYINT(1) DEFAULT 0 CHECK (fumador IN (0, 1)),
    
    -- Variable Objetivo (Framingham)
    riesgo_coronario TINYINT(1) DEFAULT 0 CHECK (riesgo_coronario IN (0, 1)),
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

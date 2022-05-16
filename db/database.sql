CREATE DATABASE banco;
USE banco;

CREATE TABLE cuenta (
cuenta_id SERIAL NOT NULL PRIMARY KEY,
cuenta_name VARCHAR(50) NOT NULL,
cuenta_amount DECIMAL(12, 2),
cuenta_status BOOLEAN DEFAULT TRUE,
cuenta_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
cuenta_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaccion (
transaccion_id SERIAL NOT NULL PRIMARY KEY,
cuenta_id_origen INTEGER REFERENCES cuenta (cuenta_id),
cuenta_id_destino INTEGER REFERENCES cuenta (cuenta_id),
transaccion_amount DECIMAL(7, 2),
transaccion_status BOOLEAN DEFAULT TRUE,
transaccion_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
transaccion_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

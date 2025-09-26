CREATE DATABASE loja_pascotto;
USE loja_pascotto;

CREATE TABLE clientes(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(255) UNIQUE
);

SELECT * FROM clientes;

CREATE TABLE pedidos(
	id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
    date_pedido DATE,
    valor DECIMAL(10,2),
    id_cliente INT,
    CONSTRAINT fk_cliente_pedidos FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)

);
CREATE DATABASE loja_pascotto;

USE loja_pascotto;

CREATE TABLE funcionarios(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario INT NOT NULL
);

CREATE TABLE categorias(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE fornecedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
	CNPJ VARCHAR(50),
    telefone Varchar(50) NOT NULL,
    CPF VARCHAR(50)
    );

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_fornecedor INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedores(id),
    FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);


SELECT*FROM fornecedores;
ALTER TABLE fornecedores ADD email VARCHAR(150);

SELECT*FROM funcionarios;
ALTER TABLE funcionarios MODIFY salario DECIMAL(10,2);

SELECT*FROM fornecedores;
ALTER TABLE fornecedores DROP COLUMN CPF;

#ALTER TABLE nome_da_tabela ADD/MODIFY/DROP COLUMN
#dELETAR CPF EM fornecedores
#ALTER TABLE nome coluna DROP COLUMN NOME_COLUNA

20:28:16	ALTER TABLE funcionarios DROP COLUMN CPF	Error Code: 1091. Can't DROP COLUMN `CPF`; check that it exists	0.000 sec


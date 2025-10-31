CREATE DATABASE EtecUirapuru;
USE EtecUirapuru;

CREATE TABLE alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
curso VARCHAR(250),
idade int
);


 
SELECT*FROM  alunos;

SELECT*FROM alunos WHERE idade>18;

ALTER TABLE alunos add salario VARCHAR(255) ;

UPDAtE alunos SET cargo = 'programador' WHERE id = 1;

SELECT COUNT(*) FROM alunos WHERE idade>13;

//mostra quantas pesssoas cadastradas tem a idade determinada

SELECT AVG(salario) FROM alunos;


UPDAtE alunos SET nome = 'Mariana' WHERE id = 1;


INSERT INTO alunos(id, nome, curso, idade, cargo, salario) VALUES ('2', 'Julia', 'Gastronomia', '19', 'Chefe', '1000');
INSERT INTO alunos(id, nome, curso, idade, cargo, salario) VALUES ('1', 'Ellen', 'Gastronomia', '19', 'Cozinheira', '1500');
INSERT INTO alunos(id, nome, curso, idade, cargo, salario) VALUES ('3', 'João', 'Educação Física', '24', 'Educador', '2000');
INSERT INTO alunos(id, nome, curso, idade, cargo, salario) VALUES ('3', 'Marcos', 'Educação Física', '17', 'Estagiário', '1000');
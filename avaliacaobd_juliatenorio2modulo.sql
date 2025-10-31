CREATE DATABASE lojapascotto;
USE lojapascotto;

CREATE TABLE fornecedores(

idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(145) NOT NULL,
cnpj VARCHAR(90) NOT NULL,
telefone INT(11) NOT NULL,
CPF INT (11) NOT NULL UNIQUE
);

CREATE TABLE produtos(

idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(145) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidadeEstoque VARCHAR(145) NOT NULL,
id_fornecedor INT,
CONSTRAINT fk_fornecedores FOREIGN KEY(id_fornecedor)REFERENCES fornecedores(idFornecedor) 
);

CREATE TABLE colaborador(

idColaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(145) NOT NULL,
cargo VARCHAR(90),
salario VARCHAR(10)
); 

CREATE TABLE pedidos(

idPedido INT AUTO_INCREMENT PRIMARY KEY,
data INT(8),
id_colaborador INT,
id_produto INT, 
quantidade VARCHAR(90),
CONSTRAINT fk_colaborador FOREIGN KEY(id_colaborador) REFERENCES colaborador(idColaborador),
CONSTRAINT fk_produtos FOREIGN KEY(id_produto) REFERENCES produtos(idProduto)
);


CREATE TABLE categorias(

idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeColaborador VARCHAR (145)
);



ALTER TABLE produtos ADD id_categoria INT;
ALTER TABLE produtos ADD CONSTRAINT fk_categorias FOREIGN KEY(id_categoria)REFERENCES categorias (idCategoria);
ALTER TABLE fornecedores ADD email VARCHAR(145) NOT NULL;

SELECT*FROM produtos;

USE lojapascotto;
INSERT into 

produtos(idProduto,nome ,preco,quantidadeEstoque,id_fornecedor,id_categoria)

VALUES

('1594', 'pão' , '5,90', '123', '', ''),
('1223', 'chocolate','10,90', '119', '', '' ),
('4787', 'leite' ,'7,80', '13', '', '');

 
 
 
 21:08:16	INSERT into   produtos(idProduto,nome ,preco,quantidadeEstoque,id_fornecedor,id_categoria)  VALUES  ('1594', 'pão' , '5,90', '123', '', ''), ('1223', 'chocolate','10,90', '119', '', '' ), ('4787', 'leite' ,'7,80', '13', '', '')	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`lojapascotto`.`produtos`, CONSTRAINT `fk_fornecedores` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`idFornecedor`))	0.000 sec

 
 21:07:33	INSERT into   produtos(idProduto,nome ,preco,quantidadeEstoque,id_fornecedor,id_categporia)  VALUES  ('1594', 'pão' , '5,90', '123', '', ''), ('1223', 'chocolate','10,90', '119', '', '' ), ('4787', 'leite' ,'7,80', '13', '', '')	Error Code: 1054. Unknown column 'id_categporia' in 'field list'	0.000 sec



20:56:25	INSERT into   fornecedores(idFornecedor, nome, cnpj, telefone, CPF)  VALUES  ('1544', 'puma' , '19320840938502767909', '12345678998', '00090987809'), ('1223', 'lacta','1398201740923874981', '11988101336', '09856776556' ), ('4787', 'lacoste' ,'239028983902202', '13269854309', '0237984872')	Error Code: 1062. Duplicate entry '1544' for key 'PRIMARY'	0.000 sec



20:46:50	fornecedores(idFornecedor, nome, cnpj, telefone, CPF)   VALUES ('1544', 'Puma' , '19320840938502767909', '12345678998', '00090987809'), ('1223', 'Lacta','1398201740923874981', '11988101336', '09856776556' ), ('4787', 'Lacoste' ,'239028983902202', '13269854309', '0237984872')	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'fornecedores(idFornecedor, nome, cnpj, telefone, CPF)   VALUES ('1544', 'Puma...' at line 1	0.000 sec

20:49:20	MODIFY*COLUN TABLE fornecedores DROP CPF	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'MODIFY*COLUN TABLE fornecedores DROP CPF' at line 1	0.000 sec


DROP COLUNM CPF ;

20:40:57	INSERT into   fornecedores(idFornecedor, nome, cnpj)   VALUES ('1544', 'Puma' , '19320840938502767909'), ('1223', 'Lacta','1398201740923874981'), ('4787', 'Lacoste' ,'239028983902202')	Error Code: 1062. Duplicate entry '0' for key 'CPF'	0.016 se



20:21:33	ALTER TABLE produtos ADD CONSTRAINT fk_categorias (id_categoria)REFERENCES categorias (idCategoria)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(id_categoria)REFERENCES categorias (idCategoria)' at line 1	0.000 sec

20:25:55	insert table fornecedores	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table fornecedores' at line 1	0.000 sec







19:42:09	CREATE TABLE produtos(  idProduto INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(145) NOT NULL, preco DECIMAL(10,2) NOT NULL, quantidadeEstoque VARCHAR(145) NOT NULL, id_fornecedor INT, FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (idFornecedores) )	Error Code: 1005. Can't create table `lojapascotto`.`produtos` (errno: 150 "Foreign key constraint is incorrectly formed")	0.047 sec

19:44:23	CREATE TABLE produtos(  idProduto INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(145) NOT NULL, preco DECIMAL(10,2) NOT NULL, quantidadeEstoque VARCHAR(145) NOT NULL, id_fornecedor INT, CONSTRAINT FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (idFornecedores) )	Error Code: 1005. Can't create table `lojapascotto`.`produtos` (errno: 150 "Foreign key constraint is incorrectly formed")	0.031 sec

19:53:55	CREATE TABLE produtos(  idProduto INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(145) NOT NULL, preco DECIMAL(10,2) NOT NULL, quantidadeEstoque VARCHAR(145) NOT NULL, id_fornecedor INT,   CONSTRAINT FOREIGN KEY(id_fornecedor)REFERENCES  )	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 9	0.000 sec



20:10:58	CREATE TABLE colaborador(  idColaborador INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(145) NOT NULL, cargo VARCHAR(90), salario DECIMAL(10000,2) )	Error Code: 1426. Too big precision 10000 specified for 'salario'. Maximum is 65	0.000 sec

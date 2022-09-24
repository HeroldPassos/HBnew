-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE hanna;


USE hanna;


create table personagens (
	idPersonagens INT PRIMARY KEY AUTO_INCREMENT,
	personagem VARCHAR(40)
)AUTO_INCREMENT = 1;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fkPersonagens int,
	FOREIGN KEY (fkPersonagens) REFERENCES personagens(idPersonagens)
);

INSERT INTO personagens(personagem) values 
('Dick Vigarista'),
('OS impossiveis'),
('Tom&Jerry'),
('Zé Colmeia');
/* inserindo personagens */


CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idPersonagens)
);
/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);


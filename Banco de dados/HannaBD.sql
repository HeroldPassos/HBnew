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


select * from usuario;

insert into usuario (nome, email, senha, fkPersonagens) values 
	("asd","asd@filipo.com","123",4),
    ("asd","asd@filipo.com","123",2),
    ("asd","asd@filipo.com","123",1),
    ("asd","asd@filipo.com","123",2),
    ("asd","asd@filipo.com","123",2),
    ("asd","asd@filipo.com","123",3),
    ("asd","asd@filipo.com","123",4),
    ("asd","asd@filipo.com","123",1),
    ("asd","asd@filipo.com","123",1),
    ("asd","asd@filipo.com","123",1),
    ("asd","asd@filipo.com","123",3),
    ("asd","asd@filipo.com","123",4),
    ("asd","asd@filipo.com","123",4);
    
    SELECT 
    COUNT(id) AS total_Usuario
				FROM
					usuario;
    
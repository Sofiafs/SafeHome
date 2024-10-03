CREATE DATABASE IF NOT EXISTS cadastro_login;

USE cadastro_login;

-- Tabela de Cadastro
CREATE TABLE IF NOT EXISTS Cadastro (
    id_usuario INT AUTO_INCREMENT,
    nome VARCHAR(70) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE, 
    senha VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_usuario)
);

-- Tabela de Login
CREATE TABLE IF NOT EXISTS Login (
    id_login INT AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(25) NOT NULL,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY (id_login),
    FOREIGN KEY (id_usuario) REFERENCES Cadastro(id_usuario)
);




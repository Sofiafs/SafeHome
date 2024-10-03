CREATE DATABASE IF NOT EXISTS cadastro_login;

USE cadastro_login;

-- Cadastro
CREATE TABLE IF NOT EXISTS Cadastro (
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(25) NOT NULL,
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY (email, senha)
);

--Login
CREATE TABLE IF NOT EXISTS Login (
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(25) NOT NULL,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (email, senha) REFERENCES Cadastro(email, senha)
);



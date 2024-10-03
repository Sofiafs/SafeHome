CREATE DATABASE IF NOT EXISTS cadastro_login;

USE cadastro_login;

-- Tabela de Cadastro 
CREATE TABLE IF NOT EXISTS Cadastro (
    id_usuario INT AUTO_INCREMENT,     
    nome VARCHAR(255) NOT NULL,        
    email VARCHAR(255) NOT NULL UNIQUE, 
    senha VARCHAR(255) NOT NULL,      
    PRIMARY KEY (id_usuario) 
             
-- Tabela de Login 
CREATE TABLE IF NOT EXISTS Login (
    id_login INT AUTO_INCREMENT,      
    email VARCHAR(255) NOT NULL,       
    senha VARCHAR(255) NOT NULL,      
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY (id_login),            
    FOREIGN KEY (email) REFERENCES Cadastro(email) 
);




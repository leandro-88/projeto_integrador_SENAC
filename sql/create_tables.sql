-- ===============================
-- CREATE TABLES - SISTEMA ACADÊMICO
-- DDL - Data Definition Language
-- ===============================
-- DDL – Data Definition Languagem é a linguagem SQL usada para criar, alterar e excluir estruturas do banco de dados como tabelas, views e índices (CREATE, ALTER, DROP, TRUNCATE).

CREATE TABLE Pessoa (
    id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(120)
);

CREATE TABLE PessoaFisica (
    id_pessoa INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    rg VARCHAR(20),
    data_nascimento DATE,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE PessoaJuridica (
    id_pessoa INT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    razao_social VARCHAR(150) NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE Aluno (
    id_pessoa INT PRIMARY KEY,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    curso VARCHAR(100) NOT NULL,
    periodo_ingresso VARCHAR(20),
    FOREIGN KEY (id_pessoa) REFERENCES PessoaFisica(id_pessoa)
);

CREATE TABLE Professor (
    id_pessoa INT PRIMARY KEY,
    departamento VARCHAR(100),
    titulacao VARCHAR(50),
    data_admissao DATE,
    FOREIGN KEY (id_pessoa) REFERENCES PessoaFisica(id_pessoa)
);

CREATE TABLE Fornecedor (
    id_pessoa INT PRIMARY KEY,
    ramo_atividade VARCHAR(100),
    contato_responsavel VARCHAR(150),
    FOREIGN KEY (id_pessoa) REFERENCES PessoaJuridica(id_pessoa)
);

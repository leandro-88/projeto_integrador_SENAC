-- ===============================
-- QUERIES E DADOS PARA TESTES
-- DML - Data Manipulation Language
-- ===============================
-- DML – Data Manipulation Language é a linguagem SQL responsável por inserir, atualizar, excluir e consultar dados nas tabelas (INSERT, UPDATE, DELETE e SELECT*, embora alguns autores classifiquem SELECT como DQL).

-- Inserção de Pessoa Física (base)
INSERT INTO Pessoa (nome, endereco, telefone, email)
VALUES ('Maria Silva', 'Rua Central, 100', '6199999-0001', 'maria@teste.com');

SET @id_pf1 = LAST_INSERT_ID();

INSERT INTO PessoaFisica (id_pessoa, cpf, rg, data_nascimento)
VALUES (@id_pf1, '123.456.789-00', '1234567', '1990-02-10');

-- Inserção de Aluno
INSERT INTO Aluno (id_pessoa, matricula, curso, periodo_ingresso)
VALUES (@id_pf1, '20250001', 'Sistemas de Informação', '2025-1');

-- Inserção de Pessoa Jurídica (base)
INSERT INTO Pessoa (nome, endereco, telefone, email)
VALUES ('Tech LTDA', 'Avenida Norte, 300', '613333-2222', 'contato@tech.com');

SET @id_pj1 = LAST_INSERT_ID();

INSERT INTO PessoaJuridica (id_pessoa, cnpj, razao_social)
VALUES (@id_pj1, '12.345.678/0001-90', 'Tech LTDA');

-- Inserção de Fornecedor
INSERT INTO Fornecedor (id_pessoa, ramo_atividade, contato_responsavel)
VALUES (@id_pj1, 'Informática', 'Carlos Mendes');

-- ===============================
-- CONSULTAS (SELECT)
-- ===============================

-- Listar todos os alunos
SELECT p.nome, a.matricula, a.curso
FROM Pessoa p
JOIN PessoaFisica pf ON p.id_pessoa = pf.id_pessoa
JOIN Aluno a ON pf.id_pessoa = a.id_pessoa;

-- Listar professores cadastrados
SELECT p.nome, pr.departamento, pr.titulacao
FROM Pessoa p
JOIN PessoaFisica pf ON p.id_pessoa = pf.id_pessoa
JOIN Professor pr ON pf.id_pessoa = pr.id_pessoa;

-- Listar fornecedores
SELECT p.nome, pj.cnpj, f.ramo_atividade
FROM Pessoa p
JOIN PessoaJuridica pj ON p.id_pessoa = pj.id_pessoa
JOIN Fornecedor f ON pj.id_pessoa = f.id_pessoa;

-- Buscar pessoa pelo CPF
SELECT p.*, pf.cpf
FROM Pessoa p
JOIN PessoaFisica pf ON p.id_pessoa = pf.id_pessoa
WHERE pf.cpf = '123.456.789-00';

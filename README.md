# Projeto Integrador - Sistema de Gestão Acadêmica <img src="imagens/Senac_logo.png" width="10%">

## Projeto Integrador: Desenvolvimento de Sistemas Orientado a Objetos

**Modelagem de um Sistema de Gestão Acadêmica com UML**

Autores: Alvaro Silva Garcia, Leonardo de Carvalho Machado, Leandro Abreu de Oliveira Filho, Lucas Vinicius Reis, Vinicius Avila Possamai

Centro Universitário SENAC – Brasília, 2025

Professor Orientador: Me. Anderson Clayton

- - -

## 1\. Diagrama de Caso de Uso

Este diagrama representa os atores que interagem com o sistema e as funcionalidades de cadastro que cada um pode executar.
<img src="imagens/Diagrama Casos de Uso.png">

### Atores e Funcionalidades

*   **Secretaria:**
    *   Cadastrar Professor
    *   Cadastrar Aluno
    *   Cadastrar Pessoa Física
*   **Administrativo:**
    *   Cadastrar Fornecedor
    *   Cadastrar Pessoa Jurídica
*   **Administrador do Sistema:** Acesso a todas as funcionalidades de cadastro

## 2\. Descrição dos Cenários dos Casos de Uso

### 2.1 Cadastro de Pessoa Física

*   **Atores:** Secretaria, Administrador do Sistema
*   **Pré-condição:** Autenticação com permissões adequadas
*   **Pós-condição:** Pessoa física registrada no sistema

**Fluxo Principal:**

1.  Seleciona a opção "Cadastrar Pessoa Física"
2.  Formulário com dados pessoais
3.  Preenchimento dos campos obrigatórios
4.  Validação dos dados
5.  Verificação de duplicidade de CPF
6.  Confirmação da operação
7.  Armazenamento e mensagem de sucesso

**Fluxos Alternativos:** CPF já cadastrado, dados inválidos ou incompletos

### 2.2 Cadastro de Pessoa Jurídica

*   **Atores:** Administrativo, Administrador do Sistema
*   **Pré-condição:** Autenticação com permissões adequadas
*   **Pós-condição:** Pessoa jurídica registrada no sistema

**Fluxo Principal:**

1.  Seleciona a opção "Cadastrar Pessoa Jurídica"
2.  Formulário com dados da empresa
3.  Preenchimento dos campos obrigatórios
4.  Validação do CNPJ
5.  Verificação de duplicidade de CNPJ
6.  Confirmação da operação
7.  Armazenamento e mensagem de sucesso

**Fluxos Alternativos:** CNPJ já cadastrado, ramo de atividade em branco

### 2.3 Cadastro de Professor

*   **Atores:** Secretaria, Administrador do Sistema
*   **Pré-condição:** Autenticação com permissões adequadas
*   **Pós-condição:** Professor registrado no sistema

**Fluxo Principal:**

1.  Seleciona a opção "Cadastrar Professor"
2.  Formulário com dados pessoais e acadêmicos
3.  Preenchimento dos campos obrigatórios
4.  Validação dos dados
5.  Verificação de duplicidade de CPF
6.  Confirmação da operação
7.  Armazenamento e mensagem de sucesso

**Fluxos Alternativos:** CPF já cadastrado, dados inválidos ou incompletos

### 2.4 Cadastro de Aluno

*   **Atores:** Secretaria, Administrador do Sistema
*   **Pré-condição:** Autenticação com permissões adequadas
*   **Pós-condição:** Aluno registrado com número de matrícula único

**Fluxo Principal:**

1.  Seleciona a opção "Cadastrar Aluno"
2.  Formulário com dados pessoais e acadêmicos
3.  Preenchimento dos campos obrigatórios
4.  Validação dos dados
5.  Verificação de duplicidade de CPF
6.  Confirmação da operação
7.  Geração de matrícula e mensagem de sucesso

**Fluxos Alternativos:** CPF já cadastrado, curso inválido

### 2.5 Cadastro de Fornecedor

*   **Atores:** Administrativo, Administrador do Sistema
*   **Pré-condição:** Autenticação com permissões adequadas
*   **Pós-condição:** Fornecedor registrado no sistema

**Fluxo Principal:**

1.  Seleciona a opção "Cadastrar Fornecedor"
2.  Formulário com dados da empresa e contato
3.  Preenchimento dos campos obrigatórios
4.  Validação do CNPJ
5.  Verificação de duplicidade de CNPJ
6.  Confirmação da operação
7.  Armazenamento e mensagem de sucesso

**Fluxos Alternativos:** CNPJ já cadastrado, ramo de atividade em branco

## 3\. Diagrama de Classes

<img src="imagens/Diagrama de Classes.png">

### Estrutura Geral

*   **Pessoa (abstrata):** nome, endereço, telefone, email
*   **PessoaFisica:** cpf, rg, dataNascimento
*   **PessoaJuridica:** cnpj, razaoSocial
*   **Aluno:** matricula, curso
*   **Professor:** departamento, titulacao
*   **Fornecedor:** ramoAtividade, contatoResponsavel

### Herança

Pessoa <|-- PessoaFisica
Pessoa <|-- PessoaJuridica
PessoaFisica <|-- Aluno
PessoaFisica <|-- Professor
PessoaJuridica <|-- Fornecedor
  

## Referências

*   BOOCH, G.; RUMBAUGH, J.; JACOBSON, I. _UML: Guia do Usuário_. 2. ed. Campus, 2005.
*   FOWLER, M. _UML Essencial_. 3. ed. Bookman, 2004.
*   SOMMERVILLE, I. _Engenharia de Software_. 9. ed. Pearson Prentice Hall, 2011.
*   PLANTUML. Disponível em: [https://plantuml.com](https://plantuml.com)
   
## Protótipo Funcional desenvolvido em Figma -> [link aqui](https://www.figma.com/proto/3fYvIYtWRnlsrIA3ybBM4p/COMPARTILHADO---Sistema-de-Gest%C3%A3o---SENAC-EAD?node-id=0-1&t=cujTRCC4AwB2m2As-1)

**Tela 1 - Login**
<img src="imagens/F1 - login.png">

**Tela 2 - Cadastro Pessoa Física**
<img src="imagens/F2 - Pessoa fisica.png">

**Tela 3 - Cadastro Professores**
<img src="imagens/F3 - Professores.png">

**Tela 4 - Cadastro Alunos**
<img src="imagens/F4 - Alunos.png">

**Tela 5 - Cadastro Pessoa Jurídica**
<img src="imagens/F5 - Pessoa Juridica.png">

**Tela 6 - Cadastro Fornecedores**
<img src="imagens/F6 - Fornecedores.png">

**Tela 7 - Confirmação Salvo com Sucesso**
<img src="imagens/F7 - Salvo Sucesso.png">

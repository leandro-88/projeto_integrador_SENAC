# Projeto Integrador – Sistema de Gestão Acadêmica  
<img src="../imagens/Senac_logo.png" width="120">

### **Desenvolvimento de Sistemas Orientado a Objetos**  
**Modelagem de um Sistema de Gestão Acadêmica com UML**

**Autores:**  
Alvaro Silva Garcia, Leonardo de Carvalho Machado, Leandro Abreu de Oliveira Filho,  
Lucas Vinicius Reis, Vinicius Avila Possamai  

Centro Universitário SENAC – Brasília, 2025  
**Professor Orientador:** Me. Anderson Clayton  

---

# 1. Diagrama de Caso de Uso

Este diagrama representa os atores que interagem com o sistema e as funcionalidades de cadastro disponíveis.

<p align="center">
  <img src="../imagens/Diagrama Casos de Uso.png" width="80%">
</p>

### **Atores e Funcionalidades**

#### Secretaria
- Cadastrar Professor  
- Cadastrar Aluno  
- Cadastrar Pessoa Física  

#### Administrativo
- Cadastrar Fornecedor  
- Cadastrar Pessoa Jurídica  

#### Administrador do Sistema
- Acesso total a todas as funcionalidades  

---

# 2. Descrição dos Cenários dos Casos de Uso

## **2.1 – Cadastro de Pessoa Física**

**Atores:** Secretaria, Administrador do Sistema  
**Pré-condição:** Estar autenticado com permissões válidas  
**Pós-condição:** Pessoa Física registrada

### **Fluxo Principal**
1. Seleciona "Cadastrar Pessoa Física"  
2. Sistema exibe formulário  
3. Preenche os dados  
4. Validação automática  
5. Verificação de CPF duplicado  
6. Confirma operação  
7. Sistema salva e exibe sucesso  

### **Fluxos Alternativos**
- CPF duplicado  
- Dados incompletos ou inválidos  

---

## **2.2 – Cadastro de Pessoa Jurídica**

**Atores:** Administrativo, Administrador do Sistema  
**Pré-condição:** Permissões válidas  
**Pós-condição:** Pessoa Jurídica registrada

### **Fluxo Principal**
1. Seleciona "Cadastrar Pessoa Jurídica"  
2. Formulário da empresa  
3. Preenchimento  
4. Validação do CNPJ  
5. Verificação de duplicidade  
6. Confirmação  
7. Registro salvo  

### **Fluxos Alternativos**
- CNPJ duplicado  
- Ramo de atividade em branco  

---

## **2.3 – Cadastro de Professor**

**Atores:** Secretaria, Administrador do Sistema  
**Pós-condição:** Professor registrado

Fluxo semelhante ao de Pessoa Física, com dados acadêmicos adicionais.

---

## **2.4 – Cadastro de Aluno**

**Atores:** Secretaria, Administrador do Sistema  
**Pós-condição:** Aluno registrado com matrícula gerada

---

## **2.5 – Cadastro de Fornecedor**

**Atores:** Administrativo, Administrador do Sistema  
**Pós-condição:** Fornecedor registrado

---

# 3. Diagrama de Classes

<p align="center">
  <img src="../imagens/Diagrama de Classes.png" width="85%">
</p>

### **Estrutura Geral das Classes**

- **Pessoa (abstrata):** nome, endereço, telefone, email  
- **PessoaFisica:** cpf, rg, dataNascimento  
- **PessoaJuridica:** cnpj, razaoSocial  
- **Aluno:** matricula, curso  
- **Professor:** departamento, titulacao  
- **Fornecedor:** ramoAtividade, contatoResponsavel  

**Herança:**
Pessoa <|-- PessoaFisica
Pessoa <|-- PessoaJuridica
PessoaFisica <|-- Aluno
PessoaFisica <|-- Professor
PessoaJuridica <|-- Fornecedor


---

# 4. Protótipo Funcional (Figma)

🔗 **Protótipo Navegável:**  
https://www.figma.com/proto/3fYvIYtWRnlsrIA3ybBM4p/COMPARTILHADO---Sistema-de-Gest%C3%A3o---SENAC-EAD?node-id=0-1&t=cujTRCC4AwB2m2As-1

---

# 5. Telas do Protótipo

### **Tela 1 – Login**  
<img src="../imagens/F1 - login.png" width="60%">

### **Tela 2 – Cadastro Pessoa Física**  
<img src="../imagens/F2 - Pessoa fisica.png" width="60%">

### **Tela 3 – Cadastro Professores**  
<img src="../imagens/F3 - Professores.png" width="60%">

### **Tela 4 – Cadastro Alunos**  
<img src="../imagens/F4 - Alunos.png" width="60%">

### **Tela 5 – Cadastro Pessoa Jurídica**  
<img src="../imagens/F5 - Pessoa Juridica.png" width="60%">

### **Tela 6 – Cadastro Fornecedores**  
<img src="../imagens/F6 - Fornecedores.png" width="60%">

### **Tela 7 – Confirmação (Sucesso)**  
<img src="../imagens/F7 - Salvo Sucesso.png" width="60%">

---

# Referências

- BOOCH, G.; RUMBAUGH, J.; JACOBSON, I. *UML: Guia do Usuário.* 2. ed. Campus, 2005.  
- FOWLER, M. *UML Essencial.* 3. ed. Bookman, 2004.  
- SOMMERVILLE, I. *Engenharia de Software.* 9. ed. Pearson Prentice Hall, 2011.  
- PLANTUML. Disponível em: https://plantuml.com


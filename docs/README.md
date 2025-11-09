<p align="center">
  <img src="../imagens/Senac_logo.png" width="160">
</p>

<h1 align="center">Projeto Integrador – Sistema de Gestão Acadêmica</h1>

<p align="center">
  <strong>Desenvolvimento de Sistemas Orientado a Objetos</strong><br>
  <em>Modelagem completa em UML e prototipação funcional</em>
</p>

<br>

<p align="center">
  <strong>Autores:</strong><br>
  Alvaro Silva Garcia • Leonardo de Carvalho Machado • Leandro Abreu de Oliveira Filho<br>
  Lucas Vinicius Reis • Vinicius Avila Possamai
</p>

<p align="center">
  Centro Universitário SENAC – Brasília, 2025<br>
  <strong>Professor Orientador:</strong> Me. Anderson Clayton
</p>

---

# 📌 1. Diagrama de Caso de Uso

O diagrama apresenta os atores que interagem com o sistema e suas responsabilidades no processo de cadastro institucional.

<br>

<p align="center">
  <img src="../imagens/Diagrama Casos de Uso.png" width="85%">
</p>

## ✅ Atores e Permissões

| Ator                    | Funcionalidades |
|------------------------|------------------|
| **Secretaria**         | Cadastrar Professor, Aluno e Pessoa Física |
| **Administrativo**     | Cadastrar Fornecedor e Pessoa Jurídica |
| **Administrador do Sistema** | Acesso total a todos os cadastros |

---

# 📌 2. Cenários dos Casos de Uso

Cada cenário descreve o fluxo principal e alternativas de interação entre usuário e sistema.

---

## 🔷 2.1 Cadastro de Pessoa Física

**Atores:** Secretaria, Administrador do Sistema  
**Pré-condição:** Usuário autenticado  
**Pós-condição:** Pessoa Física registrada

### **Fluxo Principal**
1. Usuário seleciona "Cadastrar Pessoa Física"  
2. Sistema exibe formulário  
3. Preenchimento dos dados  
4. Validação automática  
5. Verificação de CPF duplicado  
6. Confirmação  
7. Sistema salva e exibe sucesso  

### **Fluxos Alternativos**
- CPF duplicado  
- Dados incompletos  

---

## 🔷 2.2 Cadastro de Pessoa Jurídica

**Atores:** Administrativo, Administrador do Sistema  
**Pós-condição:** Pessoa Jurídica registrada

### **Fluxos Alternativos**
- CNPJ duplicado  
- Ramo de atividade vazio  

---

## 🔷 2.3 Cadastro de Professor
Fluxo semelhante ao de Pessoa Física, com dados docentes.

---

## 🔷 2.4 Cadastro de Aluno
Fluxo semelhante ao de PF, com geração automática da matrícula.

---

## 🔷 2.5 Cadastro de Fornecedor
Valida CNPJ e dados empresariais.

---

# 📌 3. Diagrama de Classes

<br>

<p align="center">
  <img src="../imagens/Diagrama de Classes.png" width="88%">
</p>

## ✅ Estrutura Geral

**Classes Principais:**

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

# 🎨 4. Protótipo Funcional (Figma)

🔗 **Clique para abrir o protótipo navegável:**  
https://www.figma.com/proto/3fYvIYtWRnlsrIA3ybBM4p/COMPARTILHADO---Sistema-de-Gest%C3%A3o---SENAC-EAD?node-id=0-1&t=cujTRCC4AwB2m2As-1

---

# 🖼️ 5. Telas do Protótipo

Cada tela representa uma etapa essencial dos processos de cadastro.

---

### 🔹 Tela 1 — Login  
<p align="center"><img src="../imagens/F1 - login.png" width="55%"></p>

### 🔹 Tela 2 — Cadastro Pessoa Física  
<p align="center"><img src="../imagens/F2 - Pessoa fisica.png" width="55%"></p>

### 🔹 Tela 3 — Cadastro Professores  
<p align="center"><img src="../imagens/F3 - Professores.png" width="55%"></p>

### 🔹 Tela 4 — Cadastro Alunos  
<p align="center"><img src="../imagens/F4 - Alunos.png" width="55%"></p>

### 🔹 Tela 5 — Cadastro Pessoa Jurídica  
<p align="center"><img src="../imagens/F5 - Pessoa Juridica.png" width="55%"></p>

### 🔹 Tela 6 — Cadastro Fornecedores  
<p align="center"><img src="../imagens/F6 - Fornecedores.png" width="55%"></p>

### 🔹 Tela 7 — Confirmação de Sucesso  
<p align="center"><img src="../imagens/F7 - Salvo Sucesso.png" width="55%"></p>

---

# 📚 6. Referências

- BOOCH, G.; RUMBAUGH, J.; JACOBSON, I. *UML: Guia do Usuário*. 2. ed. Campus, 2005.  
- FOWLER, M. *UML Essencial*. 3. ed. Bookman, 2004.  
- SOMMERVILLE, I. *Engenharia de Software*. 9. ed. Pearson Prentice Hall, 2011.  
- PLANTUML – https://plantuml.com  

---

<p align="center">
  <em>Documentação criada para fins acadêmicos – Projeto Integrador SENAC 2025</em>
</p>

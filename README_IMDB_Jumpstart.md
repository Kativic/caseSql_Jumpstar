# 🎬 Projeto Final Bootcamp Jumpstart - Análise de Dados IMDB com MySQL

Este projeto foi desenvolvido como atividade final do Bootcamp **Jumpstart**, com o objetivo de aprimorar habilidades em SQL e análise de dados no contexto do **MySQL**, utilizando datasets reais da **IMDB** – uma das maiores bases de dados sobre filmes e séries do mundo.

---

## 🧠 Objetivo do Projeto

Desenvolver um banco de dados a partir de arquivos CSV da IMDB e realizar consultas SQL analíticas que respondam a **9 perguntas de negócio** relacionadas a lucratividade, avaliações, gêneros, elencos e outros aspectos dos filmes.

Este projeto une teoria e prática em um exercício essencial para o desenvolvimento profissional em **análise de dados**, **banco de dados** e **inteligência de negócios**.

---

## 📁 Estrutura do Projeto

- `datasets/` → Arquivos CSV originais do IMDB (4 tabelas principais)
- `scripts/` → Scripts SQL para criação e população das tabelas
- `consultas/` → Consultas SQL com os relatórios respondendo às 9 perguntas de negócio
- `relatorios/` → Relatórios ou prints com os principais resultados obtidos

---

## 🗂️ Tabelas Importadas

1. `CaseSQL_Movies`
2. `CaseSQL_Ratings`
3. `CaseSQL_title_principals`
4. `CaseSQL_names`

Origem dos dados: [IMDB Developer Interface](https://www.imdb.com/interfaces/)

---

## 🔍 Perguntas de Negócio Respondidas

1. **Filmes mais lucrativos por faixa etária/gênero**
2. **Gêneros mais frequentes entre os Top 10 filmes de cada ano nos últimos 10 anos**
3. **Filmes com menor lucratividade ou prejuízo nos últimos 30 anos**
4. **Top 10 filmes mais bem avaliados pelos usuários para cada ano nos últimos 20 anos**
5. **Top 10 filmes mais bem avaliados pela crítica e usuários (com budget)**
6. **Duração média de 5 gêneros à escolha**
7. **5 filmes mais lucrativos de um ator/atriz filtrável**
8. **Atores de um filme selecionado + média da avaliação dos últimos 5 filmes de cada**
9. **Análise exploratória de um campo qualitativo e um quantitativo, com insight extra**

---

## 🛠️ Metodologia

### 1. Criação do banco de dados MySQL
Estrutura criada conforme o modelo relacional (ERD) e adequação aos dados CSV.

### 2. Importação de dados
Utilizado `LOAD DATA INFILE` ou ferramenta de importação via Workbench para inserir os dados nas tabelas.

### 3. Desenvolvimento das consultas SQL
Consultas desenvolvidas para responder diretamente às perguntas propostas com base nos dados disponíveis.

### 4. Resumo dos Resultados
Relatórios extraídos demonstram os principais insights, como:
- Gêneros mais populares
- Ator mais rentável
- Filmes com maior prejuízo
- Tendências de avaliação ao longo dos anos

---

## 📈 Resultados Esperados

- Domínio prático de **SQL avançado** para análise de dados
- Capacidade de manipular grandes datasets relacionais
- Habilidade em traduzir perguntas de negócio em consultas SQL funcionais

---

## 🔄 Trabalhos Futuros

- Criação de dashboards com Power BI ou Tableau conectando ao MySQL
- Normalização mais avançada das tabelas (ex: gênero como tabela separada)
- Integração com APIs externas de cinema para enriquecer os dados

---

## 👩‍💻 Autora

Projeto desenvolvido por **Katia Santos** como parte do Bootcamp Jumpstart, unindo conhecimento técnico e aplicação prática em banco de dados e análise de dados no contexto do entretenimento.

---
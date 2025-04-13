# Áreas de Trabalho no Protheus / ADVPL

Este documento apresenta um resumo sobre as **áreas de trabalho** utilizadas no Protheus/ADVPL, seus componentes, identificações, estrutura de dados e características técnicas.

---

## 📌 O que são Áreas de Trabalho?

Áreas de trabalho são estruturas usadas para manipular e acessar dados em tempo de execução. Elas representam tabelas do banco de dados, arquivos físicos, arquivos temporários, entre outros.

---

## 📂 Componentes Disponíveis por Área de Trabalho

As áreas de trabalho podem representar diferentes tipos de fontes de dados:

- **Tabelas de banco de dados relacionais**
- **Arquivos de bancos não relacionais** (CTREE, BTRIEVE, etc.)
- **Arquivos temporários**
- **Resultados de consultas SQL**
- **Leitura de arquivos texto**

---

## 🔠 Identificação das Áreas

As áreas são identificadas por **aliases**, como por exemplo:

| Alias | Descrição                         |
|-------|-----------------------------------|
| SA1   | Cadastro de clientes              |
| SA2   | Títulos a receber                 |
| SB1   | Cadastro de produtos              |
| TRB   | Arquivo temporário                |

Os campos das tabelas são nomeados com base no alias.  
**Exemplo:**  
Alias `SA1` (Cadastro de Clientes) → Campo `A1_EMAIL` (E-mail do cliente)

---

## 🔗 RDDs Utilizados

As áreas de trabalho utilizam diferentes tipos de RDD (Replaceable Data Driver), que determinam a forma de acesso aos dados.

- `TOPCONN` → Comunicação com **banco de dados relacionais** via DBAccess  
- `CTREECDX` → Comunicação com **arquivos físicos** no padrão CTREE

---

## ⚙️ Características Técnicas

- Não utilizam **chaves estrangeiras**
- Possuem **índices diversos**, com destaque para:
  - Índice único com base no campo `RECNO`
  - Índices devem sempre considerar o campo da **filial** (`FILIAL`)
- Não há **deleção física** por padrão:
  - Registros excluídos são apenas marcados
  - Campos de controle:
    - `D_E_L_E_T_` → Flag de exclusão
    - `R_E_C_D_E_L_` → Código do registro excluído

---

## ✅ Boas Práticas

- Sempre considerar a filial ao criar ou utilizar índices
- Verificar a flag `D_E_L_E_T_` para garantir que os dados lidos não estejam logicamente excluídos
- Utilizar aliases padronizados para facilitar a manutenção e leitura do código

---

## 📎 Exemplo de Uso

```advpl
DbSelectArea("SA1")
DbSetOrder(1)
DbSeek("01" + "000001") // 01 = Código da Filial, 000001 = Código do Cliente

If !SA1->D_E_L_E_T_
    ? "E-mail do cliente:", SA1->A1_EMAIL
EndIf

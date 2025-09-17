# Sistema de Gerenciamento de Livraria

Este repositório contém os arquivos da atividade acadêmica de modelagem e versionamento de banco de dados para um sistema de comércio. O projeto simula o gerenciamento de produtos e pedidos de uma pequena livraria.

## Sobre a Atividade

A atividade, parte da disciplina de Projeto Integrador, foca na criação de um esquema de banco de dados relacional e no uso do Git e GitHub para controle de versão. O sistema é projetado para ser a base de um pequeno comércio, permitindo o armazenamento de informações essenciais para a operação do negócio.

## Estrutura do Banco de Dados

O banco de dados é composto por duas tabelas principais:

-   **`PRODUTOS`**: Armazena as informações dos produtos disponíveis, como nome, preço e quantidade em estoque.
-   **`PEDIDOS`**: Registra os pedidos dos clientes. Esta tabela se relaciona com a tabela `PRODUTOS` através da chave estrangeira `id_produto`, permitindo rastrear quais produtos foram incluídos em cada pedido.

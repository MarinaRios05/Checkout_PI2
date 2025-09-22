# Atividade de Checkout - Projeto Integrador

Este repositório é referente à **Atividade de Checkout de Presença**, parte do Módulo 3 da disciplina de **Projeto Integrador**, da UFMS.

A atividade foi desenvolvida como parte da preparação para o nosso projeto de extensão universitário.

## Sobre a Atividade

Para a realização da atividade, foi proposta a criação de um modelo de banco de dados para um pequeno comércio, com o uso do Git e GitHub para controle de versão. O projeto simula o gerenciamento de produtos e pedidos de uma **livraria**.

## Estrutura do Banco de Dados

O banco de dados foi reestruturado para um modelo relacional mais robusto e escalável, que pertime um gerenciamento completo de clientes, produtos e vendas com vários itens. O sistema é composto por quatro tabelas principais, que se relacionam para garantir a integridade e a eficiência dos dados:

-   **`CLIENTES`**: Armazena os dados cadastrais dos clientes que realizam as compras. Cada cliente é único e pode
ser associado a múltiplos pedidos.
-   **`PRODUTOS`**: Armazena as informações dos produtos disponíveis, como nome, preço e quantidade em estoque.
-   **`PEDIDOS`**: Registra os pedidos dos clientes. Esta tabela se relaciona com a tabela `PRODUTOS` através da chave estrangeira `id_produto`, permitindo rastrear quais produtos foram incluídos em cada pedido.
-   **`ITENS_PEDIDO`**: É a tabela de junção. Ela conecta as tabelas PEDIDOS e PRODUTOS, detalhando quais produtos, em quais quantidades e a que preço foram incluídos em cada pedido. É essa estrutura que permite que um único pedido contenha múltiplos produtos diferentes.


-- Cria a tabela PRODUTOS:

CREATE TABLE PRODUTOS (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

-- Inserir livros na tabela PRODUTOS:

INSERT INTO PRODUTOS (nome_produto, preco, estoque) VALUES
('Orgulho e Preconceiro', 59.90, 20),
('Harry Potter e a Pedra Filosofal', 39.90, 15),
('Dom Quixote', 45.50, 10);

-- Cria a tabela PEDIDOS:

CREATE TABLE PEDIDOS (
    id_pedido SERIAL PRIMARY KEY,
    data_pedido DATE NOT NULL,
    id_produto INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);

-- Inserir pedidos na tabela PEDIDOS:

INSERT INTO PEDIDOS (data_pedido, id_produto, quantidade) VALUES
('2025-09-17', 1, 1),
('2025-09-17', 2, 2),
('2025-09-17', 3, 1);
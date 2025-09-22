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

-- Cria a tabela clientes:

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Inserir pedidos na tabela clientes:

INSERT INTO clientes (nome, email) VALUES ('CLIENTE PADRÃO', 'contato@livraria.com');

ALTER TABLE pedidos ADD COLUMN id_cliente INT;

UPDATE pedidos SET id_cliente = 1;

ALTER TABLE pedidos ALTER COLUMN id_cliente SET NOT NULL;

ALTER TABLE pedidos ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

-- Cria a tabela itens_pedido:

CREATE TABLE itens_pedido (
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_pedido FOREIGN KEY(id_pedido) REFERENCES pedidos(id_pedido),
    CONSTRAINT fk_produto FOREIGN KEY(id_produto) REFERENCES produtos(id_produto),
    PRIMARY KEY (id_pedido, id_produto)
);

-- Inserir pedidos na tabela itens_pedido:

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario)
SELECT 
    p.id_pedido, 
    p.id_produto, 
    p.quantidade,
    prod.preco 
FROM 
    pedidos p
JOIN 
    produtos prod ON p.id_produto = prod.id_produto;

ALTER TABLE pedidos DROP COLUMN id_produto;

ALTER TABLE pedidos DROP COLUMN quantidade;
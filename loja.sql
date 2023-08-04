CREATE SCHEMA loja;
USE loja;

CREATE TABLE produtos (
    Nome VARCHAR(50),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT,
    DataChegada DATE
);

INSERT INTO produtos (Nome, Categoria, Preco, Estoque, DataChegada)
VALUES
    ('Camiseta', 'Vestuário', 39.99, 50, '2023-08-01'),
    ('Calça Jeans', 'Vestuário', 79.90, 30, '2023-07-25'),
    ('Tênis Esportivo', 'Calçados', 149.99, 20, '2023-08-02'),
    ('Celular', 'Eletrônicos', 999.00, 10, '2023-07-29'),
    ('Livro', 'Livros', 29.90, 100, '2023-07-15'),
    ('Mochila', 'Acessórios', 69.50, 15, '2023-08-03');

SELECT * FROM produtos;

SELECT Nome, Preco AS Preço FROM produtos WHERE Preco > 100;

SELECT Nome, Preco AS Preço FROM produtos WHERE Preco > 100 ORDER BY Preço DESC;

SELECT Categoria, AVG(Preco) AS Media_Preço FROM produtos GROUP BY Categoria;
SELECT Categoria, COUNT(Preco) AS Contagem_Preço FROM produtos GROUP BY Categoria;
SELECT Categoria, SUM(Preco) AS Soma_Preço FROM produtos GROUP BY Categoria;

SELECT Nome, Preco AS Soma_Preço FROM produtos WHERE Categoria = 'Vestuário';
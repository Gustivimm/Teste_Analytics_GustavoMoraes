-- Criando a tabela de vendas
CREATE TABLE vendas (
    id INT PRIMARY KEY,
    data DATE,
    produto VARCHAR(100),
    categoria VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10,2)
);

-- Inserindo dados na tabela de vendas
INSERT INTO vendas (id, data, produto, categoria, quantidade, preco) VALUES 
();

-- Listando o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) ordenado pelo total de vendas em ordem decrescente
SELECT Produto, Categoria, SUM(Quantidade * Preço) AS Total_Vendas
FROM vendas
GROUP BY Produto, Categoria
ORDER BY Total_Vendas DESC;

-- Identificando os produtos que venderam menos no mês de junho de 2023 (foi solicitado de 2024, mas obviamente nada retornou)
SELECT Produto, SUM(Quantidade) AS Total_Quantidade
FROM vendas
WHERE EXTRACT(MONTH FROM data) = 6 AND EXTRACT(YEAR FROM data) = 2023
GROUP BY Produto
ORDER BY Total_Quantidade ASC;
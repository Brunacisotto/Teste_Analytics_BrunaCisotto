-- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto. 
-- Ordene o resultado pelo valor total de vendas em ordem decrescente
SELECT
    Produto, Categoria,
    FORMAT(SUM(Quantidade * Preco), 2) AS TotalVendas -- multiplicando qtdXpreco e formatando para 2 casas decimais
FROM
    data_clean
GROUP BY
    Produto, Categoria
ORDER BY
    SUM(Quantidade * Preco) DESC; -- ordenar pela expressão numérica, pois se ordenar pelo TotalVendas não faz a ordem decrescente corretamente

-- Identificar os produtos que venderam menos no mês de junho de 2024.
-- Para Junho de 2024 não temos dados, pois o Dataset foi gerado com dados de 01/01/23 a 31/12/2023.
-- mas se a solicitação se referir a Junho de 2023 (período que está contemplado pela massa de dados), segue a consulta
SELECT
    Produto,
    FORMAT(SUM(Quantidade * Preco), 2) AS TotalVendasJunho -- mutiplicando qtdXpreco e formatando para duas casas decimais 
FROM
    data_clean
WHERE
    YEAR(Data) = 2023 AND MONTH(Data) = 6 -- selecionando o mes de Junho
GROUP BY
    Produto
ORDER BY
    SUM(Quantidade * Preco) ASC -- ordenando de forma crescente
LIMIT 10; -- listando os 10 produtos com menor valor de vendas em junho de 2023
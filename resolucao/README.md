# Teste_Analytics_BrunaCisotto

Solução do teste

## Parte1

Escolhi Python para fazer a parte 1 do teste, por ter maior experiencia com essa linguagem de programação, utilizei o google Colab para desenvolver o código e segui os seguintes passos. 

Para criar um script para simular um dataset de vendas com pelo menos 50 registros, contendo as colunas: ID, Data, Produto, Categoria, Quantidade, Preço. Onde o período dos dados deve ser de 01/01/2023 a 31/12/2023.

![python0](../prints%20gerados/python.png)

Importei as bibliotecas necessárias (pandas e numpy) e para gerar uma quantidade de dados maior e mais relevante, escolhi trabalhar com 1000 registros.

![python1](../prints%20gerados/python%20(1).png)

Criei as colunas id e data aleatória, obedecendo a regra de que o período deveria ser entre 01/01/2023 a 31/12/2023.

![python2](../prints%20gerados/python%20(2).png)

Criei uma lista de produtos e atribui a eles uma categoria e um preço.

![python3](../prints%20gerados/python%20(3).png)

Garanti que a escolha de produtos fosse aleatória para preencher a base de dados e a quantidade de cada venda também fosse aletaória, podendo ser ente 1 e 50.  
Associe a categoria e o preço aos produtos.  
Por fim gerei a base de dados.

![python4](../prints%20gerados/python%20(4).png)

Salvei como data1.csv essa base gerada, que pode ser encontrado aqui:

[dataset1](../datasets/data1.csv)

Mas notei que não poderia fazer nenhum tratamento nela, porque ela não possuia valores nulos ou linhas duplicadas, então simulei alguns desses problemas nas colunas preço e produto, incluí alguns valores NaN e aleatoriamente gerei 10 linhas duplicadas e salvei o arquivo como dataasertratado.csv, que pode ser encontrado aqui:

[dataset2](../datasets/dataasertratado.csv)

Isso para poder cumprir com as instruções do documento que pedia para realizar a limpeza dos dados, incluindo:  
- Tratamento de valores faltantes  
- Remoção de duplicatas  
- Conversão de tipos de dados, se necessário

![python5](../prints%20gerados/python%20(5).png)
![python6](../prints%20gerados/python%20(6).png)

A partir dai apaguei as linhas duplicatas, e removi também as linhas que haviam registros nulos (achei que remover os nulos nesse caso seria a melhor abordagem, por ser uma quantidade de dados pequena com nulos, se fossem mais registros talvez tivesse tido uma outra abordagem, como preenche-los com a média, por exemplo)  
Por fim, salvei esse dataset limpo e tratado como data_clean.csv, conforme a orientação do documento. Esse dataset está aqui:

[datasetclean](../datasets/data_clean.csv)

![python7](../prints%20gerados/python%20(7).png)

Carreguei a base limpa e tratada no python.  
Para iniciar as etapas solicitadas no documento de utilizandar o dataset limpo, para realizar as seguintes análises:  
- Calcule o total de vendas (Quantidade * Preço) por produto.  
- Identifique o produto com o maior número de vendas totais.

![python8](../prints%20gerados/python%20(8).png)

Criei uma coluna Total de Vendas que multiplica a quantidade de produtos pelo Preco.

![python9](../prints%20gerados/python%20(9).png)

Salvei novamente a base de dados, agora incluindo a coluna Total de Vendas como data_clean_comtotaldevendas.csv, aqui está ele:

[datasetcomtotal](../datasets/data_clean_comtotaldevendas.csv)

Agrupei os produtos e somei o Total de Vendas de cada um, ordenei em ordem decrescente para sabermos quais foram os produtos que mais faturaram em vendas.  

![python10](../prints%20gerados/python%20(10).png)

Selecionei apenas a primeira linha da lista, para evidenciar o produto mais lucrativo, que como podemos observar foram as bicicletas.  
Depois fiquei curiosa para saber qual produto é o mais vendido em quantidade de unidades.  
Agrupei e somei a quantidade de cada produto vendido e posteriormente ordenei por ordem decrescente a lista de quantidade de produtos mais vendidos.

![python11](../prints%20gerados/python%20(11).png)

Por fim, selecionei apenas a primeira linha que é o produto mais vendido e com isso descobrimos que o livro de receitas é o lider de vendas em quantidade.  
O código dessa primeira etapa está salvo como teste_quod.ipynb e teste_quod.py aqui:

[códigos](../Python/)

## Parte 2

A próxima etapa solicitada no documento era: Análise Exploratória de Dados de Vendas  
- Com o mesmo dataset simulado da tarefa anterior, criar visualizações/gráficos e com eles:  
  - Criar um gráfico de linha mostrando a tendência de vendas ao longo do tempo, analisando os dados mensalmente.

Iniciei um novo notebook.

![python12](../prints%20gerados/python%20(12).png)

Importei as bibliotecas necessárias em um novo notebook, li o dataset com a coluna extra Total de Vendas.

![python13](../prints%20gerados/python%20(13).png)

Tratei a coluna de data para conseguir separar por meses e fazer a análise temporal, somando as vendas de cada mês.

![graficopython1](../prints%20gerados/graficopython%20(1).png)

Criei um gráfico de linhas, no qual podemos visualizar a quantidade de vendas por mês.

![graficopython2](../prints%20gerados/graficopython%20(2).png)

Criei um gráfico de barras de quantidade de cada  produto vendido no mês. 

![graficopython3](../prints%20gerados/graficopython%20(3).png)

Criei um gráfico de Quantidade de produtos mais vendidos no ano.

![graficopython4](../prints%20gerados/graficopython%20(4).png)

Por fim, um gráfico de quais os produtos mais lucrativos durante o ano.  

Agora podemos partir para a seguinte etapa: Identifique e descreva pelo menos dois padrões ou insights interessantes que você observou nos dados.

**Insights que pude tirar desses gráficos:**  

**Evolução das vendas ao longo do ano**  
O mês de setembro foi o grande destaque, apresentando um pico acentuado de vendas. Esse aumento pode estar relacionado à chegada da primavera, à realização de promoções ou até ao lançamento de produtos aguardados.  
Por outro lado, os meses de fevereiro e março tiveram desempenho fraco, o que sugere a possibilidade de reduzir o estoque nesse período para diminuir custos de armazenamento.  
Julho também registrou queda, possivelmente por ser um mês mais frio e de férias, fatores que podem impactar negativamente as vendas, principalmente considerando que o negócio é focado em produtos esportivos.  

**Produtos mais vendidos em quantidade x Produtos mais lucrativos**  
Alguns itens de menor valor unitário, como o livro de receitas e as luvas, estão entre os mais vendidos em quantidade, talvez por serem mais acessíveis e até utilizados como opções de presente.  
Por outro lado, as bicicletas se destacam como nosso principal produto em termos de lucratividade, sendo o verdadeiro carro-chefe da operação. Os relógios inteligentes também apresentam participação expressiva no valor total de vendas.  
A análise por mês mostra que as barracas de camping têm picos em janeiro, abril e julho, o que evidencia sazonalidade e aponta a necessidade de reforçar o estoque nesses períodos. Já as bicicletas mantêm um bom desempenho durante todo o ano, confirmando seu papel como produto estratégico para o negócio.

## Parte2 SQL

Para as consultas em SQL utilizei o MySQL Workbench.  

A primeira tarefa aqui era: com base nas tabelas geradas no exercício anterior, escreva consultas SQL para:  
- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto. Ordene o resultado pelo valor total de vendas em ordem decrescente.

![sql](../prints%20gerados/consultasql%20(2).png)

Utilizando a tabela data_clean.csv selecionei o produto e a categoria, multipliquei a quantidade pelo preço e agrupei pelos produtos, utilizei o format para deixar apenas duas casas decimais.  

A segunda tarefa aqui pedia:  
- Identificar os produtos que venderam menos no mês de junho de 2024.

No mês de Junho de 2024 não temos dados, pois a base de dados foi gerada de 01/01/2023 a 31/12/2023.  
Mas fiz a consulta para os dados de Junho de 2023.

![sql2](../prints%20gerados/consultasql%20(1).png)

Selecionei o produto, somei o valor total de vendas formatando para duas casas decimais, filtrei o período do mês 06 de 2023, agrupei por produtos e organizei do menor para o maior valor mostrando os 10 produtos com menor valor de vendas no mês em questão.  
Aqui podemos notar que o produto que menos vendeu em Junho de 2023 foram as barrinhas de ceral, seguidas por meias.  

Salvei as consultas em um arquivo chamado consultas sql que está aqui:

[consultassql](../SQL/)

## Análise Dashboard

Utilizei a base de dados gerada para fazer um dashboard no Looker Studio, como atividade adicional, para uma análise mais aprofundada, o link desse dashboard para a consulta é:  

https://lookerstudio.google.com/reporting/03fd562f-f4d0-4d37-baf4-b1289cad6972

O dashboard é interativo e permite a filtragem por Mês e Produto, o que será crucial para análises mais aprofundadas, os gráficos tem interação uns com os outros o que facilita visualizações especificas.  
Aqui estão alguns prints dele e insights extraídos:

![dash1](../prints%20gerados/dash1.png)

Visão Geral das Vendas Anuais  
- Valor Total de Vendas: O faturamento anual atingiu R$ 9.038.574,52.  
- Total de Itens Vendidos: Foram vendidos 25.861 itens ao longo do ano.  

Destaques por Categoria  
As vendas em três categorias representaram mais de 78% do faturamento total, com destaque para:  
1. Equipamento Esportivo: Categoria líder, respondendo por 45,9% do total de vendas.  
2. Eletrônicos: Segunda categoria mais representativa, com 19,6% da participação.  
3. Lazer: Terceira categoria mais importante, totalizando 12,8% das vendas.  

Principais Produtos Vendidos  
A análise do Total de Vendas por Produto demonstra uma forte concentração em dois itens de alto valor:  
- Bicicleta: Produto que domina o volume de vendas.  
- Relógio Inteligente: Segundo produto mais vendido em termos de valor.  
Outros produtos de destaque que contribuíram para as vendas incluem Barraca de Camping, Tênis, Calça, Creatina e Livro de Receitas.  

Recomendações  
Manter o foco e investir em estoques e marketing para Equipamento Esportivo e Eletrônicos, já que são os pilares de faturamento.

![dash2](../prints%20gerados/dash2.png)

Análise da Evolução Mensal (Tendências e Sazonalidade)  
A análise da evolução mensal revela um ano com forte sazonalidade e um desempenho de vendas notável no segundo semestre:  
- Queda Inicial: O ano começou com uma queda, saindo de aproximadamente R$ 678 mil em Janeiro para o ponto mais baixo do ano em Fevereiro.  
- Recuperação e Estabilidade: As vendas se recuperaram continuamente de Março a Junho, atingindo um patamar estável.  
- Pico de Vendas: O desempenho atingiu seu ponto máximo em Setembro, ultrapassando a marca de R$ 1,1 milhão (o pico mais alto do ano).  
- Performance Final: Após o pico de Setembro, houve uma desaceleração em Outubro e Novembro, mas o ano terminou com uma forte recuperação em Dezembro.  

Conclusão: O terceiro trimestre (Julho-Setembro) foi o período de maior crescimento e rentabilidade. O pico em Setembro e a forte recuperação em Dezembro sugerem a importância das vendas sazonais de final de ano e/ou promoções específicas.

![dash3](../prints%20gerados/dash3.png)

Desempenho Detalhado por Produto: Volume vs. Receita  

Esta análise compara o volume de vendas (Unidades Vendidas - barras roxas) com o valor total de vendas (Receita - linha branca) para os principais produtos, revelando diferenças significativas:  
1. Produtos de Alto Valor  
   Estes são os produtos que geram a maior receita, mesmo que seu volume de unidades vendidas não seja o maior:  
   - Bicicleta: Produto de maior receita, volume menor que o segundo colocado.  
   - Relógio Inteligente: Segundo em receita, volume abaixo da média dos outros produtos.  
2. Produtos de Alto Volume  
   Representam a maioria das transações, mas contribuem menos para o faturamento:  
   - Livro de Receitas: Maior volume, receita baixa.  
   - Luvas, Camiseta, Cantil, Meias, Barra de Cereal: Altos volumes, receita modesta.

Conclusão e Implicações  
- Faturamento dominado por produtos de alto valor (Bicicleta e Relógio Inteligente).  
- Maioria dos itens vendidos é de baixo valor, importante para base de clientes e fluxo de caixa.

![dash4](../prints%20gerados/dash4.png)

Análise Estratégica de Produtos: Preço vs. Volume  

O gráfico de bolhas separa os produtos em quatro grupos estratégicos:  
1. Pilares de Receita: Bicicleta e Relógio Inteligente, alto preço e alto valor de vendas.  
2. Motores de Volume: Produtos de baixo preço, alta quantidade.  
3. Oportunidades de Margem Média: Barraca de Camping e Cantil, equilíbrio preço/quantidade.  

Síntese da Estratégia de Produtos  
Modelo de vendas misto: faturamento impulsionado por itens premium, volume de clientes construído em torno de itens de baixo/médio preço.

![dash5](../prints%20gerados/dash5.png)

Análise da Participação Mensal de Produtos  

Gráfico de barras empilhadas revela a flutuação mensal:  
- Sazonalidade dos Principais Produtos: Bicicleta (40-55%), Relógio Inteligente (15-25%)  
- Destaques de Produtos Secundários: Barraca de Camping, Mini Trampolim, Monitor Cardíaco, Calça, Luvas, Mochila

**Conclusão**  
O desempenho de vendas em 2023 foi sólido, fortemente concentrado nas categorias de Equipamento Esportivo e Eletrônicos.  
Gestão de estoque e marketing deve ser otimizada para maximizar vendas nos picos de Setembro e Dezembro e buscar estratégias de recuperação nos meses de baixa (Fevereiro, Julho).











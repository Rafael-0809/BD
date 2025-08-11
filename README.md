# Tema
É um banco de dados de uma loja de roupa online

# Descrição do problema modelado
Um banco de dados com informações do produto e do cliente, que apresenta diversos dados, e pode ser filtrado por tamanho de roupa (P, M, G e XG), e por preço (maior ou menor que 150 R$).

# Entidades 
clientes: Armazena informações dos usuários, como nome, e-mail e data de cadastro, cada cliente é identificado por um id_cliente único.
produtos: Contém os dados principais de cada produto, como nome, descrição e preço, cada produto é identificado por um id_produto.
variacoes_produto: Uma tabela auxiliar que gerencia as variações de cada produto (tamanho, cor) e o estoque disponível, e stá ligada à tabela produtos por um id_produto.
pedidos: Registra cada pedido feito no sistema, incluindo o cliente que o realizou, a data, o status e o valor total. Cada pedido é identificado por um id_pedido único.
detalhes_pedido: Esta é a tabela de ligação entre pedidos e variacoes_produto. Ela descreve o conteúdo exato de cada pedido, especificando qual variação de produto foi comprada, a quantidade e o preço unitário.

# querys

# Filtrar por tamanho (p, m, g e xg)

# P
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'P';

# M
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'M';

# G
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'G';

# XG 
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'XG';

# filtrar por preço

# maior que 150 R$
select
    nome_produto,
    preco
from produtos
where preco > 150.00;

# menor que 150 R$
select
    nome_produto,
    preco
from produtos
where preco < 150.00;

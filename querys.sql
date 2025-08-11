-- Visualizar tabelas
select * from clientes;
select * from produtos;
select * from variacoes_produto;
select * from pedidos;
select * from detalhes_pedido;

-- Filtrar por tamanho (p, m, g e xg)

-- P
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'P';

-- M
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'M';

-- G
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'G';

-- XG 
select
    p.nome_produto,
    p.preco,
    vp.cor
from variacoes_produto as vp
inner join produtos as p
on vp.id_produto = p.id_produto
where vp.tamanho = 'XG';

-- filtrar por preço

-- maior que 150 R$
select
    nome_produto,
    preco
from produtos
where preco > 150.00;

-- menor que 150 R$
select
    nome_produto,
    preco
from produtos
where preco < 150.00;
-- criação das tabelas

create table clientes (
    id_cliente int auto_increment primary key,
    nome varchar(50) not null,
    email varchar(255) unique not null,
    data_cadastro date not null
);

create table produtos (
    id_produto int auto_increment primary key,
    nome_produto varchar(50) not null,
    descricao text,
    preco decimal(10, 2) not null
);

---

CREATE TABLE IF NOT EXISTS variacoes_produto (
    id_variacao int auto_increment primary key,
    id_produto int not null,
    tamanho varchar(2),
    cor varchar(15),
    estoque int default 0,
    foreign key (id_produto) references produtos(id_produto)
);

---

create table pedidos (
    id_pedido int primary key,
    id_cliente int not null,
    data_pedido date not null,
    status_pedido varchar(25) not null,
    valor_total decimal(10, 2) not null,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table detalhes_pedido (
    id_detalhe int auto_increment primary key,
    id_pedido int not null,
    id_variacao int not null,
    quantidade int not null,
    preco_unitario decimal(10, 2) not null,
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_variacao) references variacoes_produto(id_variacao)
);

-- inserir dados nas tabelas

insert into clientes values
('1', 'Ana Silva', 'ana.silva@gmail.com', '2024-05-10'),
('2', 'Bruno Costa', 'bruno.costa@gmail.com', '2024-06-15'),
('3', 'Carla Dantas', 'carla.dantas@gmail.com', '2024-06-18'),
('4', 'Daniel Fernandes', 'daniel.fernandes@gmail.com', '2024-06-22'),
('5', 'Elisa Martins', 'elisa.martins@gmail.com', '2024-06-25'),
('6', 'Felipe Guerra', 'felipe.guerra@gmail.com', '2024-06-28'),
('7', 'Giovanna Rocha', 'giovanna.rocha@gmail.com', '2024-07-01'),
('8', 'Hugo Oliveira', 'hugo.oliveira@gmail.com', '2024-07-05'),
('9', 'Isabela Santos', 'isabela.santos@gmail.com', '2024-07-08'),
('10', 'João Pereira', 'joao.pereira@gmail.com', '2024-07-12'),
('11', 'Karina Alves', 'karina.alves@gmail.com', '2024-07-15'),
('12', 'Lucas Guedes', 'lucas.guedes@gmail.com', '2024-07-18'),
('13', 'Mariana Lima', 'mariana.lima@gmail.com', '2024-07-20'),
('14', 'Nathan Vieira', 'nathan.vieira@gmail.com', '2024-07-23'),
('15', 'Olívia Ribeiro', 'olivia.ribeiro@gmail.com', '2024-07-26'),
('16', 'Pedro Almeida', 'pedro.almeida@gmail.com', '2024-07-29'),
('17', 'Renata Castro', 'renata.castro@gmail.com', '2024-08-02'),
('18', 'Sérgio Nunes', 'sergio.nunes@gmail.com', '2024-08-05'),
('19', 'Tainá Freitas', 'taina.freitas@gmail.com', '2024-08-08'),
('20', 'Victor Hugo', 'victor.hugo@gmail.com', '2024-08-11');

insert into produtos values
('101', 'Camiseta Básica', 'Camiseta 100% algodão', '49.90'),
('102', 'Calça Jeans Skinny', 'Jeans com elastano', '129.90'),
('103', 'Moletom Canguru', 'Moletom com capuz e bolso frontal', '159.90'),
('104', 'Tênis Casual', 'Tênis confortável para o dia a dia', '219.90');

insert into variacoes_produto values
('1', '101', 'P', 'Preto', '20'),
('2', '101', 'M', 'Preto', '50'),
('3', '101', 'G', 'Preto', '30'),
('4', '101', 'XG', 'Branco', '25'),
('5', '102', 'P', 'Azul', '15'),
('6', '102', 'M', 'Azul', '10'),
('7', '102', 'G', 'Azul', '20'),
('8', '103', 'P', 'Cinza', '22'),
('9', '103', 'M', 'Cinza', '18'),
('10', '103', 'G', 'Cinza', '12'),
('11', '104', 'G', 'Preto', '30'),
('12', '104', 'P', 'Branco', '25'),
('13', '104', 'M', 'Preto', '20'),
('14', '104', 'XG', 'Preto', '15');

select * from variacoes_produto;
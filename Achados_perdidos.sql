CREATE TABLE Setores
(
    codigo int,
    nome_centro varchar(40) NOT NULL,
    PRIMARY KEY (codigo)
);


CREATE TABLE Funcionarios
(
    CPF numeric(11),
    nome varchar(40) NOT NULL,
    setor int NOT NULL,
    funcao varchar check ( funcao in ('gerente', 'auxiliar')),
    PRIMARY KEY (CPF),
    FOREIGN KEY (setor) REFERENCES Setores
);

CREATE TABLE Objetos
(
    codigo int,
    descricao varchar(40) NOT NULL,
    setor varchar(40) NOT NULL,
    categoria int NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (categoria) REFERENCES Categorias,
    FOREIGN KEY (setor) REFERENCES Setores
);

CREATE TABLE Categorias
(
    codigo int,
    nome varchar(40) NOT NULL,
    PRIMARY KEY (codigo)
);

insert into Funcionarios(cpf, nome, setor, funcao)
VALUES (56108849266, 'Kauan Lima Araujo',1, 'gerente'),
(23979180050, 'Maria Almeida Rodrigues', 1,'auxiliar'),
(94903499847, 'Lavinia Lima Almeida', 3,'auxiliar'),
(60617592152, 'Cauã Lima Silva', 1,'auxiliar'),
(90145954765, 'Melissa Rodrigues Goncalves',2, 'gerente'),
(65542079024, 'Carlos Cunha Santos', 2,'auxiliar'),
(53531125125, 'Luan Correia Goncalves', 3,'auxiliar'),
(40263847055, 'Nicolas Almeida Lima',3, 'gerente');

insert into Objetos(codigo, descricao, setor, categoria)
VALUES (1, 'Boné vermelho com simbolo da Ferrari', 1, 2),
(2, 'Guarda chuva preto com cabo de madeira', 2, 2),
(3, 'Carteira de motorista com nome de Luiz Silva', 3, 4),
(4, 'Jaqueta cinza da marca Adidas', 1, 2),
(5, 'Blusa de moletom azul da marca Vida Marinha', 1, 2),
(6, 'Livro 1984 de George Orwell', 2, 3),
(7, 'Telefone celular da Samsung', 3, 1),
(8, 'Estetoscópio LITTMANN 3M', 3, 2);

insert into Categorias(codigo, nome)
VALUES (1, 'Eletrônicos'),
(2, 'Roupas/Acessórios'),
(3, 'Material de escritório'),
(5, 'Documentos'),
(6, 'Outros');

insert into Setores(codigo, nome_centro)
VALUES (1, 'CTC'),
(2,'CFH'),
(3, 'CCS');

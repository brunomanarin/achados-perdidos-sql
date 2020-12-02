CREATE TABLE Setores
(
    codigo int,
    nome_centro varchar(40) NOT NULL,
    objetos int,
    funcionarios int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (objetos) REFERENCES Objetos,
    FOREIGN KEY (funcionarios) REFERENCES Funcionarios
);


CREATE TABLE Funcionarios
(
    CPF     numeric(11),
    nome    varchar(40) NOT NULL,
    funcao  varchar check ( funcao in ('gerente', 'auxiliar')),
    PRIMARY KEY (CPF)
);

CREATE TABLE Objetos
(
    codigo int,
    descricao varchar(40) NOT NULL,
    nome_centro varchar(40) NOT NULL,
    categoria varchar(40) NOT NULL,
    PRIMARY KEY (codigo)
    FOREIGN KEY (categoria) REFERENCES Categorias
);

CREATE TABLE Categorias
(
    codigo int,
    nome    varchar(40) NOT NULL,
    PRIMARY KEY (codigo)
);

insert into Funcionarios(cpf, nome, funcao)
VALUES (56108849266, 'Kauan Lima Araujo', 'gerente'),
(23979180050, 'Maria Almeida Rodrigues', 'auxiliar'),
(94903499847, 'Lavinia Lima Almeida', 'auxiliar'),
(60617592152, 'Cauã Lima Silva', 'auxiliar'),
(90145954765, 'Melissa Rodrigues Goncalves', 'gerente'),
(65542079024, 'Carlos Cunha Santos', 'auxiliar'),
(53531125125, 'Luan Correia Goncalves', 'auxiliar'),
(40263847055, 'Nicolash Almeida Lima', 'gerente');

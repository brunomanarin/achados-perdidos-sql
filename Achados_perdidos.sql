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
    descricao    varchar(40) NOT NULL,
    nome_centro    varchar(40) NOT NULL,
    categoria    varchar(40) NOT NULL,
    PRIMARY KEY (codigo)
    FOREIGN KEY (categoria) REFERENCES Categorias,
);

CREATE TABLE Categorias
(
    codigo int,
    nome    varchar(40) NOT NULL,
    PRIMARY KEY (CPF)
);
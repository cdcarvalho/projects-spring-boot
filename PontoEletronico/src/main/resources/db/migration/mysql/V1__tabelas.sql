create table TB_EMPRESA (
    ID int not null AUTO_INCREMENT,
    cnpj varchar(30) not null,
    razao_social varchar(300) not null,
    data_criacao DATETIME not null,
    data_alteracao DATETIME not null,
    CONSTRAINT PK_EMPRESA PRIMARY KEY (ID)
);

INSERT INTO TB_EMPRESA (cnpj, razao_social, data_criacao, data_alteracao)
VALUES ('12345678', 'Teste', NOW(), NOW());

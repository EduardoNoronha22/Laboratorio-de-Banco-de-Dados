CREATE TABLE banco{
	nBanco numeric(5) not null,
	nome varchar(50) not null,
	Estado varchar(20) not null,
	Logradouro varchar(100) not null,
	CEP numeric(8) not null,
	Complemento varchar(50),
	Cidade varchar(25) not null,
	CNPJ numeric(11) not null,
	Numero numeric(5),
	CONSTRAINT banco_pk PRIMARY KEY (nBanco)
}

CREATE TABLE agencia{
	nBanco numeric(10) not null,
	nAgencia numeric(4) not null,
	Cidade varchar(25) not null,
	CONSTRAINT fk_banco FOREIGN KEY(nBanco) REFERENCES banco(nBanco),
	CONSTRAINT agencia_pk PRIMARY KEY(nAgencia, fk_banco)
}

CREATE TABLE conta{
	dtAbertura date(10) not null,
	Saldo numeric(9) not null,
	CONSTRAINT fk_conta FOREIGN KEY(nBanco)
}

CREATE TABLE cliente{
	prenome varchar(10) not null,
	sobrenome varchar(10) not null,
	CONSTRAINT cliente_pk PRIMARY KEY(CPF)
}

CREATE TABLE corrente{
	
}

CREATE TABLE poupanca{
	
}
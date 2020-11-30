create table departamento(
	codigo INT,
	nome VARCHAR(100) not null,
	primary key (codigo)
);

create table funcionario(
	matricula INT not null,
	nome VARCHAR(100) not null,
	salario DECIMAL(100) not null,
	gerente INT,
	departamento INT not null,
	primary key (matricula),
	foreign key (gerente) references funcionario(matricula),
	foreign key (departamento) references departamento(codigo)
);
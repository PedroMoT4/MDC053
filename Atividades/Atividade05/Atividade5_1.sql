CREATE TABLE curso(
	id_curso INT AUTO_INCREMENT,
	nome_curso VARCHAR(100) NOT NULL,
	carga_horaria SMALLINT,
	PRIMARY KEY(id_cursos)
);

CREATE TABLE professor(
	id_professor INT NOT NULL,
	nome_professor VARCHAR(100) NOT NULL,
	titulacao_professor CHAR(3),
	PRIMARY KEY (id_professor)
);

CREATE TABLE aluno(
	id_aluno INT NOT NULL AUTO_INCREMENT,
	nome_aluno VARCHAR (100) NOT NULL,
	email_aluno VARCHAR(100),
	fone_contato CHAR(14),
	PRIMARY KEY (id_aluno)
);

CREATE TABLE turma(
	id_turma INT NOT NULL,
	id_curso INT NOT NULL,
	id_professor INT NOT NULL,
	id_aluno INT NOT NULL,
	data_matricula DATE NOT NULL,
	PRIMARY KEY(id_turma),
	FOREIGN KEY(id_curso) REFERENCES curso(id_curso),
	FOREIGN KEY(id_professor) REFERENCES professor(id_professor),
	FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno)
);
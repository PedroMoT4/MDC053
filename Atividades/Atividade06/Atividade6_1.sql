CREATE TABLE aluno(
     id_aluno INT NOT NULL,
     nome_aluno VARCHAR(100) NOT NULL,
     PRIMARY KEY(id_aluno)
);

CREATE TABLE disciplina(
     id_disciplina INT NOT NULL,
     nome_disciplina VARCHAR(100) NOT NULL,
     carga_horaria INT CHECK(carga_horaria > 0),
     PRIMARY KEY(id_disciplina)
);

CREATE TABLE professor(
     id_professor INT NOT NULL,
     nome_professor VARCHAR(100) NOT NULL,
     PRIMARY KEY(id_professor)
);

CREATE TABLE turma(
     id_turma INT NOT NULL,
     num_periodo INT NOT NULL,
     id_professor INT,
     id_disciplina INT,
     PRIMARY KEY(id_turma),
     FOREIGN KEY(id_professor) REFERENCES professor(id_professor),
     FOREIGN KEY(id_disciplina) REFERENCES disciplina(id_disciplina) ON DELETE CASCADE
);

CREATE TABLE historico(
     id_historico INT NOT NULL,
     id_turma INT NOT NULL,
     id_aluno INT NOT NULL,
     num_faltas SMALLINT,
     media_final DECIMAL(3,1),
     PRIMARY KEY(id_historico),
     FOREIGN KEY(id_turma) REFERENCES turma(id_turma) ON DELETE CASCADE,
     FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno)
);
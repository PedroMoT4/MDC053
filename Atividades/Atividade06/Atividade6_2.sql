INSERT INTO aluno(id_aluno, nome_aluno) VALUES(1, 'JOSE');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(2, 'MARIA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(3, 'BRUNO');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(4, 'CARLA');
INSERT INTO aluno(id_aluno, nome_aluno) VALUES(5, 'PEDRO');

INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(1, 'BANCO DE DADOS I', 60);
INSERT INTO disciplina(id_disciplina, nome_disciplina, carga_horaria) VALUES(2, 'BANCO DE DADOS II', 60);

INSERT INTO professor(id_professor, nome_professor) VALUES(1, 'LETICIA');
INSERT INTO professor(id_professor, nome_professor) VALUES(2, 'JOSE REGINALDO');

INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina) VALUES(1, 20201, 1, 1);
INSERT INTO turma(id_turma, num_periodo, id_professor, id_disciplina) VALUES(2, 20202, 2, 2);

INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(1, 1, 1);
INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(2, 1, 2);
INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(3, 1, 3);
INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(4, 1, 4);
INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(5, 2, 1);
INSERT INTO historico(id_historico, id_turma, id_aluno) VALUES(6, 2, 2);

--V. Insira um registro na tabela turma com os valores 3 para id_turma, 20201 para num_periodo e 3 para id_professor. Qual foi o comando executado e o resultado obtido?
insert into turma(id_turma, num_periodo, id_professor) values(3, 20201, 3);
--SQL Error [23503]: ERROR: insert or update on table "turma" violates foreign key constraint "turma_id_professor_fkey"
--Detalhe: Key (id_professor)=(3) is not present in table "professor".

--VI. Insira um registro na tabela turma com os valores 3 para id_turma, 20202 para num_periodo e 1 para id_disciplina. Qual foi o comando executado e o resultado obtido?
insert into turma(id_turma, num_periodo, id_disciplina) VALUES(3, 20202, 1);
--Tabela turma foi atualizada com sucesso

--VII. Altere o id_disciplina de BANCO DE DADOS I para o valor 3. Qual foi o comando executado e o resultado obtido?
update disciplina set id_disciplina=3 where id_disciplina=1;
--SQL Error [23503]: ERROR: update or delete on table "disciplina" violates foreign key constraint "turma_id_disciplina_fkey" on table "turma"
--Detalhe: Key (id_disciplina)=(1) is still referenced from table "turma".

--VIII. Altere o num_faltas para o valor 0 somente para id_aluno igual a 1 e id_turma igual a 1. Qual foi o comando executado e o resultado obtido?
update historico set num_faltas = 0 where id_aluno = 1 and id_turma = 1;
--num_faltas foi atualizado com sucesso

--IX. Exclua o aluno PEDRO. Qual foi o comando executado e o resultado obtido?
delete from aluno where nome_aluno = 'PEDRO';
--O aluno PEDRO foi deletado com sucesso

--X. Exclua a disciplina BANCO DE DADOS II. Qual foi o comando executado e o resultado obtido?
delete from disciplina where nome_disciplina = 'BANCO DE DADOS II';
--BANCO DE DADOS II foi deletado da tabela disciplina com sucesso





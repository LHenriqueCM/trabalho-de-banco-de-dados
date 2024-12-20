-- Inserindo registros na tabela CURSOS
INSERT INTO USR_GESTAO_ACAD.CURSOS (CURSO_ID, NOME, DESCRICAO, DURACAO) VALUES (1, 'Ciência da Computação', 'Curso focado em tecnologia e programação.', 48);
INSERT INTO USR_GESTAO_ACAD.CURSOS (CURSO_ID, NOME, DESCRICAO, DURACAO) VALUES (2, 'Engenharia de Software', 'Curso especializado em desenvolvimento de sistemas.', 60);
INSERT INTO USR_GESTAO_ACAD.CURSOS (CURSO_ID, NOME, DESCRICAO, DURACAO) VALUES (3, 'Administração', 'Curso sobre gestão de empresas e negócios.', 36);

-- Inserindo registros na tabela PROFESSORES
INSERT INTO USR_GESTAO_ACAD.PROFESSORES (PROFESSOR_ID, NOME, DEPARTAMENTO) VALUES (1, 'Carlos Silva', 'Tecnologia');
INSERT INTO USR_GESTAO_ACAD.PROFESSORES (PROFESSOR_ID, NOME, DEPARTAMENTO) VALUES (2, 'Mariana Oliveira', 'Administração');
INSERT INTO USR_GESTAO_ACAD.PROFESSORES (PROFESSOR_ID, NOME, DEPARTAMENTO) VALUES (3, 'Rafael Almeida', 'Engenharia');

-- Inserindo registros na tabela DISCIPLINAS
INSERT INTO USR_GESTAO_ACAD.DISCIPLINAS (DISCIPLINA_ID, NOME, CURSO_ID, PROFESSOR_ID) VALUES (1, 'Programação Básica', 1, 1);
INSERT INTO USR_GESTAO_ACAD.DISCIPLINAS (DISCIPLINA_ID, NOME, CURSO_ID, PROFESSOR_ID) VALUES (2, 'Banco de Dados', 1, 1);
INSERT INTO USR_GESTAO_ACAD.DISCIPLINAS (DISCIPLINA_ID, NOME, CURSO_ID, PROFESSOR_ID) VALUES (3, 'Gestão Empresarial', 3, 2);
INSERT INTO USR_GESTAO_ACAD.DISCIPLINAS (DISCIPLINA_ID, NOME, CURSO_ID, PROFESSOR_ID) VALUES (4, 'Engenharia de Software Avançada', 2, 3);

-- Inserindo registros na tabela ESTUDANTES
INSERT INTO USR_GESTAO_ACAD.ESTUDANTES (ESTUDANTE_ID, NOME, DATA_NASCIMENTO, MATRICULA, CURSO_ID) VALUES (1, 'João Pereira', TO_DATE('2000-05-15', 'YYYY-MM-DD'), 'MAT001', 1);
INSERT INTO USR_GESTAO_ACAD.ESTUDANTES (ESTUDANTE_ID, NOME, DATA_NASCIMENTO, MATRICULA, CURSO_ID) VALUES (2, 'Ana Santos', TO_DATE('1999-08-20', 'YYYY-MM-DD'), 'MAT002', 2);
INSERT INTO USR_GESTAO_ACAD.ESTUDANTES (ESTUDANTE_ID, NOME, DATA_NASCIMENTO, MATRICULA, CURSO_ID) VALUES (3, 'Lucas Almeida', TO_DATE('2001-03-10', 'YYYY-MM-DD'), 'MAT003', 3);

-- Inserindo registros na tabela MATRICULAS
INSERT INTO USR_GESTAO_ACAD.MATRICULAS (MATRICULA_ID, ESTUDANTE_ID, DISCIPLINA_ID, DATA_MATRICULA) VALUES (1, 1, 1, TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO USR_GESTAO_ACAD.MATRICULAS (MATRICULA_ID, ESTUDANTE_ID, DISCIPLINA_ID, DATA_MATRICULA) VALUES (2, 1, 2, TO_DATE('2024-01-20', 'YYYY-MM-DD'));
INSERT INTO USR_GESTAO_ACAD.MATRICULAS (MATRICULA_ID, ESTUDANTE_ID, DISCIPLINA_ID, DATA_MATRICULA) VALUES (3, 2, 4, TO_DATE('2024-01-18', 'YYYY-MM-DD'));
INSERT INTO USR_GESTAO_ACAD.MATRICULAS (MATRICULA_ID, ESTUDANTE_ID, DISCIPLINA_ID, DATA_MATRICULA) VALUES (4, 3, 3, TO_DATE('2024-01-22', 'YYYY-MM-DD'));
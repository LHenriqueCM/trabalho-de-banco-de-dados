# trabalho_banco_de_dados
integrante : Luiz Henrique Chauca Mamani
RA : 183665
função : desenvolvimento dos scripts das tabelas e das inserções de dados
integrante : Kaio Alves Torres
RA : 060214
função : analise de testes e verificação de erros e problemas

descrição :
O banco de dados USR_GESTAO_ACAD é projetado para gerenciar um sistema acadêmico, como o de uma faculdade ou universidade, organizando informações sobre cursos, professores, disciplinas, estudantes e matrículas. 

Objetivo do Banco de Dados :

*Gerenciar os cursos oferecidos pela instituição.
*Cadastrar professores e as disciplinas que ministram.
*Cadastrar estudantes e vinculá-los aos cursos.
*Controlar o processo de matrícula dos estudantes em disciplinas.
*Garantir a consistência dos dados por meio de chaves primárias, estrangeiras e triggers para validações.

Com isso, o banco facilita consultas e relatórios, como:

Lista de disciplinas de um curso.
Estudantes matriculados em uma disciplina específica.
Professores associados a determinadas disciplinas.

Abaixo estão os detalhes das tabelas e seus relacionamentos:

Tabelas e seus campos principais:

CURSOS:
Representa os cursos oferecidos pela instituição.

Campos:
*CURSO_ID: Identificador único do curso (PK).
*NOME: Nome do curso (UNIQUE).
*DESCRICAO: Descrição do curso.
*DURACAO: Duração em meses (deve ser maior que 0, validado por CHECK).

PROFESSORES:
Armazena informações sobre os professores.

Campos:
*PROFESSOR_ID: Identificador único do professor (PK).
*NOME: Nome do professor.
*DEPARTAMENTO: Nome do departamento ao qual o professor pertence.

DISCIPLINAS:
Detalha as disciplinas vinculadas aos cursos e ministradas por professores.

Campos:
*DISCIPLINA_ID: Identificador único da disciplina (PK).
*NOME: Nome da disciplina.
*CURSO_ID: Relaciona a disciplina a um curso (FK para CURSOS).
*PROFESSOR_ID: Relaciona a disciplina a um professor (FK para PROFESSORES).

ESTUDANTES:
Contém os dados dos estudantes matriculados.

Campos:
*ESTUDANTE_ID: Identificador único do estudante (PK).
*NOME: Nome do estudante.
*DATA_NASCIMENTO: Data de nascimento (validada por trigger para ser anterior à data atual).
*MATRICULA: Código único do estudante (UNIQUE).
*CURSO_ID: Relaciona o estudante a um curso (FK para CURSOS).

MATRICULAS:
Representa o vínculo entre estudantes e disciplinas.

Campos:
*MATRICULA_ID: Identificador único da matrícula (PK).
*ESTUDANTE_ID: Relaciona a matrícula a um estudante (FK para ESTUDANTES).
*DISCIPLINA_ID: Relaciona a matrícula a uma disciplina (FK para DISCIPLINAS).
*DATA_MATRICULA: Data de matrícula (trigger valida para ser até a data atual).

Relacionamentos entre as tabelas:

CURSOS → DISCIPLINAS:
Um curso pode ter várias disciplinas, mas cada disciplina está vinculada a apenas um curso.
Relacionamento de 1:N.

PROFESSORES → DISCIPLINAS:
Um professor pode lecionar várias disciplinas, mas cada disciplina tem apenas um professor associado.
Relacionamento de 1:N.

ESTUDANTES → CURSOS:
Um estudante está associado a um curso, mas cada curso pode ter vários estudantes matriculados.
Relacionamento de 1:N.

ESTUDANTES → MATRICULAS:
Um estudante pode se matricular em várias disciplinas, mas uma matrícula só pertence a um estudante.
Relacionamento de 1:N.

DISCIPLINAS → MATRICULAS:
Uma disciplina pode ter várias matrículas, mas cada matrícula está vinculada a uma única disciplina.
Relacionamento de 1:N.

intrução para execução no SQL Developer

Abrir o SQL Developer:
Conecte-se ao banco de dados fornecendo as credenciais (usuário, senha, host, etc.).
crie este usuario
usuário : USR_GESTAO_ACAD
senha : *qualquer*

Criar as tabelas:
Cole o script DDL e execute.
Inserir dados:
Cole o script DML para inserir dados.
Visualizar os dados:
para visualizar as tabelas clique na categoria tabelas, sera possivel ver os detalhes da tabela como restricoes e condições
para visualizar os dados inseridos utilize o comando : select * from nome_da_tabela_escolhida, sera possivel ver os dados inseridos na tabela

CREATE TABLE alunos (
 cod_aluno NUMBER(5) CONSTRAINT alunos_pk PRIMARY KEY ,
 nome VARCHAR(50) NOT NULL,
 sobrenome VARCHAR(50) NOT NULL,
 dt_nasc DATE NOT NULL
);

CREATE TABLE autores (
 cod_autor INTEGER CONSTRAINT autores_pk PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 sobrenome VARCHAR(50) NOT NULL
);

CREATE TABLE emprestimos (
 cod_emprestimo INTEGER CONSTRAINT emprestimos_pk PRIMARY KEY ,
 dt_retirada DATE NOT NULL,
 dt_entrega DATE,
 cod_aluno NUMBER(5) NOT NULL,
 cod_livros INTEGER NOT NULL
);

ALTER TABLE emprestimos ADD ( cod_emprestimo );
CREATE TABLE livros (
 cod_livros INTEGER CONSTRAINT livros_pk PRIMARY KEY,
 titulo VARCHAR(100) NOT NULL
);

CREATE TABLE livros_autores (
 cod_autor INTEGER NOT NULL,
 cod_livros INTEGER NOT NULL,
CONSTRAINT livros_autores_pk PRIMARY KEY ( cod_autor,cod_livros )
);

ALTER TABLE livros_autores
 ADD CONSTRAINT autores_fk FOREIGN KEY ( cod_autor )
 REFERENCES autores ( cod_autor );
 
ALTER TABLE emprestimos
 ADD CONSTRAINT emprestimos_alunos_fk FOREIGN KEY ( cod_aluno )
 REFERENCES alunos ( cod_aluno );
 
ALTER TABLE emprestimos
 ADD CONSTRAINT emprestimos_livros_fk FOREIGN KEY ( cod_livros )
 REFERENCES livros ( cod_livros );
 
ALTER TABLE livros_autores
 ADD CONSTRAINT livros_fk FOREIGN KEY ( cod_livros )
 REFERENCES livros ( cod_livros );
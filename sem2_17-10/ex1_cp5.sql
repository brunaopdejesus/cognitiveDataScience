CREATE TABLE materia_prima (
    cod_materia_prima INTEGER CONSTRAINT materia_prima_pk PRIMARY KEY,
    materia_prima VARCHAR(255)
);


CREATE TABLE produto (
    cod_produto INTEGER CONSTRAINT produto_pk PRIMARY KEY,
    cod_categoria INTEGER,
    produto VARCHAR(255)
);

CREATE TABLE item_produto(
    cod_produto INTEGER NOT NULL,
    cod_materia_prima INTEGER NOT NULL,
    quantidade INTEGER,
    CONSTRAINT item_produto_pk PRIMARY KEY (cod_produto, cod_materia_prima)
);

ALTER TABLE item_produto
MODIFY quantidade NOT NULL;

ALTER TABLE produto
    ADD CONSTRAINT item_produto_fk FOREIGN KEY (cod_produto)
        REFERENCES item_produto (cod_produto);

ALTER TABLE materia_prima
    ADD CONSTRAINT item_produto_fk FOREIGN KEY (cod_item_produto)
        REFERENCES item_produto (cod_produto);

ALTER TABLE materia_prima
MODIFY materia_prima VARCHAR2(50) CONSTRAINT materia_prima_ck CHECK (materia_prima IN ('MADEIRA', 'PAPELÃO', 'INOX'));














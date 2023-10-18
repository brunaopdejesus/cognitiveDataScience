-- Criar as chaves primárias e estrangeiras.

-- As colunas PRODUTO e MATERIA PRIMA devem ser únicas.
-- Nome das Restrições
    -- Coluna PRODUTO: PRODUTO UK,
    -- Coluna MATERIA PRIMA : MATERIA PRIMA UK

-- A coluna QUANTIDADE não pode aceitar NULO.

-- A coluna MATERIA PRIMA deve permitir a inserção dos seguintes dados: MADEIRA, PAPELÃO ou INOX. 
-- Nomeie essa restrição de: 
    -- MATERIA PRIMA CK

-- Nomeie as restrições PK e FK conforme as informações do diagrama.

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

desc materia_prima;
desc produto;
desc item_produto;

ALTER TABLE item_produto
MODIFY quantidade NOT NULL;

ALTER TABLE materia_prima
MODIFY materia_prima VARCHAR2(50) CONSTRAINT materia_prima_ck CHECK (materia_prima IN ('MADEIRA', 'PAPELÃO', 'INOX'));

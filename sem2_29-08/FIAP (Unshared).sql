--China
DESC SI;

SELECT * FROM SI;
-- IN�CIO DE TRANSA��O IT
INSERT INTO SI VALUES (3,'PETTER');
INSERT INTO SI VALUES (4,'SCOTT');

SELECT * FROM SI;

COMMIT;
------------------------------------
SELECT * FROM SI;
------------------------------------
UPDATE SI
SET COD =200 WHERE COD = 2;
ROLLBACK;


 --Database: alfa_transportes;

 --DROP DATABASE alfa_transportes;

CREATE DATABASE alfa_transportes
   WITH 
   OWNER = postgres
   ENCODING = 'UTF8'
   LC_COLLATE = 'Portuguese_Brazil.1252'
   LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Item 1
	CREATE TABLE CAD_FILIAL (
 codigo_fil SERIAL PRIMARY KEY,
 cnpj varchar(14) NOT NULL, 
 nome varchar (100) NOT NULL,
 cidade varchar (150) NOT NULL,
 estado char(2)	NOT NULL
);

-- Item 2

INSERT INTO CAD_FILIAL (
	cnpj
	, nome
	, cidade
	, estado
) 
VALUES (
		'82110818000121'
		, 'ALFA TRANSPORTES EIRELI'
		, 'CAÇADOR'
		, 'SC'
	), 
	(
		'82110818000202'
		, 'ALFA TRANSPORTES EIRELI'
		, 'CURITIBA'
		, 'PR'
	),
	(
		'82110818000393'
		, 'ALFA TRANSPORTES EIRELI'
		, 'GUARULHOS'
		, 'SP'
	),
	(
		'82110818001608'
		, 'ALFA TRANSPORTES EIRELI'
		, 'BETIM'
		, 'MG'
	),
	(
		'82110818000806'
		, 'ALFA TRANSPORTES EIRELI'
		, 'CACHOEIRINHA'
		, 'RS'
	),
	(
		'82110818002760'
		, 'ALFA TRANSPORTES EIRELI'
		, 'TRES LAGOAS'
		, 'MS'
	),
	(
		'82110818002094'
		, 'ALFA TRANSPORTES EIRELI'
		, 'GOIANIA'
		, 'GO'
	),
	(
		'82110818002507'
		, 'ALFA TRANSPORTES EIRELI'
		, 'SERRA'
		, 'ES'
	),
	(
	'82110818002841'
		, 'ALFA TRANSPORTES EIRELI'
		, 'RIO DE JANEIRO'
		, 'RJ'
	);

--  Item 3

--drop table CAD_DEPARTAMENTOS; 

CREATE TABLE CAD_DEPARTAMENTOS (
 codigo_dep SERIAL PRIMARY KEY,
 nome varchar (100) NOT NULL,
 codigo_fil integer NOT NULL,
 FOREIGN KEY (codigo_fil) references CAD_FILIAL (codigo_fil)
);

-- Item 4 

INSERT INTO CAD_DEPARTAMENTOS  (
	 nome
	, codigo_fil
) 
	VALUES (
		'EXPEDIÇÃO'
		, 1	
	),
	(
		'SAC'
		, 1	
	),
	(
		'OPERACIONAL'
		, 1	
	),
	(
		'ADMINISTRATIVO'
		, 1	
	),
	(
		'GERENCIA'
		, 1	
	),
	(
		'EXPEDIÇÃO'
		, 2	
	),
	(
		'SAC'
		, 2	
	),
	(
		'OPERACIONAL'
		, 2	
	),
	 (
		'ADMINISTRATIVO'
		, 2
	),
	(
		'GERENCIA'
		, 2	
	),
	(
		'EXPEDIÇÃO'
		, 3	
	),
	(
		'SAC'
		, 3	
	),
	(
		'OPERACIONAL'
		, 3	
	),
	(
		'ADMINISTRATIVO'
		, 3	
	),
   (
		'GERENCIA'
		, 3	
	),
   (
		'EXPEDIÇÃO'
		, 4	
	),
	(
		'SAC'
		, 4	
	),
   (
		'OPERACIONAL'
		, 4	
	),
	 (
		'ADMINISTRATIVO'
		, 4	
	),
	(
		'GERENCIA'
		, 4	
	),
  (
		'EXPEDIÇÃO'
		, 5	
	),
	(
		'SAC'
		, 5	
	),
	(
		'OPERACIONAL'
		, 5	
	),
	(
		'ADMINISTRATIVO'
		, 5	
	),
	(
		'GERENCIA'
		, 5
	),
	 (
		'EXPEDIÇÃO'
		, 6
	),	
   (
		'SAC'
		, 6	
	),
	(
		'OPERACIONAL'
		, 6	
	),
	 (
		'ADMINISTRATIVO'
		, 6	
	),
	(
		'GERENCIA'
		, 6	
	),
	(
		'EXPEDIÇÃO'
		, 7	
	),
	(
		'SAC'
		, 7	
	),
	 (
		'OPERACIONAL'
		, 7	
	),
	 (
		'ADMINISTRATIVO'
		, 7	
	),
	(
		'GERENCIA'
		, 7	
	),
	(
		'EXPEDIÇÃO'
		, 8	
	),
	(
		'SAC'
		, 8
	),
	 (
		'OPERACIONAL'
		, 8	
	),
	 (
		'ADMINISTRATIVO'
		, 8	
	),
	(
		'GERENCIA'
		, 8	
	),
	(
		'EXPEDIÇÃO'
		, 9	
	),
	(
		'SAC'
		, 9	
	),
	 (
		'OPERACIONAL'
		, 9	
	),
	 (
		'ADMINISTRATIVO'
		, 9	
	),
	(
		'GERENCIA'
		, 9	
	);
	
-- Item 5 

CREATE TABLE CAD_FUNCIONARIOS (
 CPF VARCHAR(11) PRIMARY KEY,
 nome varchar (100) NOT NULL,
 genero char(2) NOT NULL,
 data_admissao date NOT NULL,
 salario decimal(14,2) NOT NULL,
 codigo_dep integer NOT NULL,
 FOREIGN KEY (codigo_dep) references CAD_DEPARTAMENTOS (codigo_dep)
);

-- Item 6

INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		10573469945
		, 'GABRIEL WESTERLON PELICER'
		, 'M'
		, '20211105'
		, 4500.00
		, 4
	);

INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		10573669945
		, 'JOÃO DA SILVA'
		, 'M'
		, '20001105'
		, 5500
		, 5
	),
	(
		10773669945
		, 'JOÃO DA PEREIRA'
		, 'M'
		, '20151120'
		, 1500
		, 1
	),
	(
		10593669945
		, 'LUCIA MARIA'
		, 'F'
		, '20051105'
		, 6500
		, 2
		);

INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		10573659945
		, 'JOEL PEDRO'
		, 'M'
		, '20031105'
		, 5500
		, 8
	),
	(
		10773668945
		, 'FIDELSIO LUIZ'
		, 'M'
		, '20051120'
		, 2500
		, 6
	),
	(
		10593669955
		, 'LUCIA MARIA'
		, 'F'
		, '20050905'
		, 6500
		, 9
		),
		(
		10593669944
		, 'LUIZA MARIA'
		, 'F'
		, '20081105'
		, 8500
		, 10
		);
		

INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		10575659947
		, 'PEDRINHO LUIZ'
		, 'M'
		, '20081205'
		, 5000
		, 8
	),
	(
		10973668978
		, 'LUIZ FELIPE'
		, 'M'
		, '20031120'
		, 10550
		, 13
	),
	(
		50533669955
		, 'JOANA FERNANDES'
		, 'F'
		, '20050920'
		, 3500
		, 14
		),
		(
		80593667244
		, 'MARIA PADILHA'
		, 'F'
		, '20081107'
		, 6500
		, 15
		);


INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		70575659945
		, 'LUIZ PEDRO'
		, 'M'
		, '20041205'
		, 1800
		, 16
	),
	(
		70973668945
		, 'FELIPE PAULO'
		, 'M'
		, '20030720'
		, 4000
		,17
	),
	(
		60593669955
		, 'JOANA DA SILVA'
		, 'F'
		, '20010920'
		, 35000
		, 20
		),
		(
		80593667944
		, 'MARIA PADILHA'
		, 'F'
		, '20071107'
		, 6300
		, 19
		);


INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		10575659945
		, 'PEDRINHO LUIZ'
		, 'M'
		, '20081205'
		, 5000
		, 8
	),
	(
		10973668945
		, 'LUIZ FELIPE'
		, 'M'
		, '20031120'
		, 10550
		, 13
	),
	(
		50593669955
		, 'JOANA FERNANDES'
		, 'F'
		, '20050920'
		, 3500
		, 14
		),
		(
		80593669944
		, 'MARIA PADILHA'
		, 'F'
		, '20081107'
		, 6500
		, 15
		);


INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		71575659945
		, 'PEDRO JOAO'
		, 'M'
		, '20141205'
		, 1800
		, 21
	),
	(
		77973668945
		, 'PAULO ROBERTO'
		, 'M'
		, '20130720'
		, 4000
		, 22
	),
	(
		68593669955
		, 'ADRIANA DA SILVA'
		, 'F'
		, '20100920'
		, 3500
		, 25
		),
		(
		80293667944
		, 'MARIA PEDROSA'
		, 'F'
		, '20171107'
		, 6300
		, 23
		);
		
INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		01575659945
		, 'PEDRO DA CRUZ'
		, 'M'
		, '20181205'
		, 1800
		, 26
	),
	(
		79973668945
		, 'ROBERTO JULIO'
		, 'M'
		, '20190720'
		, 4800
		, 28
	),
	(
		68593569955
		, 'ADRIANA DA CRUZ'
		, 'F'
		, '20100925'
		, 7500
		, 30
		),
		(
		83293667944
		, 'MARIA PEDROSA'
		, 'F'
		, '20111107'
		, 6700
		, 29
		);
		


INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		01575657945
		, 'PEDRO DA ROÇA'
		, 'M'
		, '20201205'
		, 18000
		, 35
	),
	(
		71973668945
		, 'JULIO DA SILVA'
		, 'M'
		, '20090720'
		, 4600
		, 34
	),
	(
		66593569955
		, 'ADRIANA DA SILVA'
		, 'F'
		, '19980925'
		, 8500
		, 34
		),
		(
		83093668944
		, 'MARIA ROBERTA'
		, 'F'
		, '20011120'
		, 6700
		, 32
		);

INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		01575857945
		, 'PEDRO DA CUNHA'
		, 'M'
		, '20171205'
		, 1850
		, 36
	),
	(
		21973668945
		, 'JULIO DA ROSA'
		, 'M'
		, '20010720'
		, 4310
		, 37
	),
	(
		66593529955
		, 'ADRIANA BORTOLI'
		, 'F'
		, '19970915'
		, 8700
		, 40
		),
		(
		83593668944
		, 'ROBERTA PEREIRA'
		, 'F'
		, '20011125'
		, 6780
		, 39
		);
INSERT INTO CAD_FUNCIONARIOS  (
	 CPF
	, nome
	, genero
	, data_admissao
	, salario
	, codigo_dep
) 
	VALUES (
		01775657945
		, 'JOÃO CUNHA'
		, 'M'
		, '20131205'
		, 1800
		, 41
	),
	(
		81973368945
		, 'JULIO SILVERA'
		, 'M'
		, '20070720'
		, 4650
		, 42
	),
	(
		77593569955
		, 'FELICIANA DA SILVA'
		, 'F'
		, '19900925'
		, 8560
		, 45
		),
		(
		83293668944
		, 'MARIA ROBERTA PERISCO'
		, 'F'
		, '20011020'
		, 6750
		, 32
		);
		
-- Item 7		

select
	F.CPF
	, F.NOME AS Nome_funcionario
	, FL.CIDADE
	, D.NOME As Departamento
from 
CAD_FUNCIONARIOS AS F,
CAD_DEPARTAMENTOS AS D,
CAD_FILIAL AS FL
WHERE
D.CODIGO_FIL = FL.CODIGO_FIL
AND  F.CODIGO_DEP = D.CODIGO_DEP  
ORDER BY 
FL.CODIGO_FIL, 
F.NOME;

 -- Item 8

select
	F.CPF
	, F.NOME
	, F.DATA_ADMISSAO
	, FL.CIDADE
from 
CAD_FUNCIONARIOS AS F,
CAD_DEPARTAMENTOS AS D,
CAD_FILIAL AS FL
WHERE
D.CODIGO_FIL = FL.CODIGO_FIL
AND  F.CODIGO_DEP = D.CODIGO_DEP  
ORDER BY 
F.DATA_ADMISSAO
LIMIT 5;

-- Item 9

select
	FL.CODIGO_FIL
	, FL.CIDADE
	, COUNT(F.NOME) AS TOTAL_FUNC
from 
CAD_FUNCIONARIOS AS F,
CAD_DEPARTAMENTOS AS D,
CAD_FILIAL AS FL
WHERE
D.CODIGO_FIL = FL.CODIGO_FIL
AND  F.CODIGO_DEP = D.CODIGO_DEP 
GROUP BY
FL.CODIGO_FIL
, FL.NOME
Order by FL.CODIGO_FIL;

-- Item 10

select
	D.CODIGO_DEP
	, D.NOME
	, cast(AVG(F.SALARIO)AS NUMERIC(14, 2)) AS MEDIA_SALARIAL

from 
CAD_FUNCIONARIOS AS F,
CAD_DEPARTAMENTOS AS D,
CAD_FILIAL AS FL
WHERE
D.CODIGO_FIL = FL.CODIGO_FIL
AND  F.CODIGO_DEP = D.CODIGO_DEP 
GROUP BY
 D.NOME,
 D.CODIGO_DEP
ORDER BY 
D.CODIGO_DEP;





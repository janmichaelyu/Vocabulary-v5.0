-- Copy all relevant tables from DevV5

CREATE TABLE CONCEPT AS SELECT * FROM DEVV5.CONCEPT;
CREATE TABLE VOCABULARY AS SELECT * FROM DEVV5.VOCABULARY;
CREATE TABLE CONCEPT_RELATIONSHIP AS SELECT * FROM DEVV5.CONCEPT_RELATIONSHIP;
CREATE TABLE RELATIONSHIP AS SELECT * FROM DEVV5.RELATIONSHIP;
CREATE TABLE CONCEPT_SYNONYM AS SELECT * FROM DEVV5.CONCEPT_SYNONYM;
CREATE TABLE CONCEPT_ANCESTOR AS SELECT * FROM DEVV5.CONCEPT_ANCESTOR;
CREATE TABLE DOMAIN AS SELECT * FROM DEVV5.DOMAIN;
CREATE TABLE DRUG_STRENGTH AS SELECT * FROM DEVV5.DRUG_STRENGTH;
CREATE TABLE CONCEPT_CLASS AS SELECT * FROM DEVV5.CONCEPT_CLASS;
CREATE TABLE VOCABULARY_CONVERSION AS SELECT * FROM DEVV5.VOCABULARY_CONVERSION;

UPDATE VOCABULARY SET VOCABULARY_NAME = 'OMOP Standardized Vocabularies', VOCABULARY_VERSION = 'v5.0 21-Mar-2015' WHERE VOCABULARY_ID = 'NONE';

ALTER TABLE CONCEPT ADD CONSTRAINT XPK_CONCEPT PRIMARY KEY (CONCEPT_ID);
CREATE INDEX CONCEPT_VOCAB ON CONCEPT (VOCABULARY_ID);

CREATE INDEX CONCEPT_RELATIONSHIP_C_1 ON CONCEPT_RELATIONSHIP (CONCEPT_ID_1);
CREATE INDEX CONCEPT_RELATIONSHIP_C_2 ON CONCEPT_RELATIONSHIP (CONCEPT_ID_2);

CREATE INDEX CONCEPT_SYNONYM_CONCEPT ON CONCEPT_SYNONYM (CONCEPT_ID);
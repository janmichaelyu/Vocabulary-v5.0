-- DROP TABLE STRENGTH_TMP CASCADE CONSTRAINTS PURGE;

CREATE TABLE STRENGTH_TMP
(
   DRUG_CODE          VARCHAR2(255 Byte),
   INGREDIENT_CODE    VARCHAR2(255 Byte),
   INGREDIENT_NAME    VARCHAR2(255 Byte),
   AMOUNT_VALUE       DECIMAL(38,19),
   AMOUNT_UNIT        VARCHAR2(255 Byte),
   NUMERATOR_VALUE    DECIMAL(38,19),
   NUMERATOR_UNIT     VARCHAR2(255 Byte),
   DENOMINATOR_VALUE  DECIMAL(38,19),
   DENOMINATOR_UNIT   VARCHAR2(255 Byte)
);


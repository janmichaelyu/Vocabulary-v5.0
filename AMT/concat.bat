type "SNOMED-AU_conversion.sql" > load_stage.sql
type "00_non_drug.sql" >> load_stage.sql
type "01_drug_concept_stage.sql" >> load_stage.sql
type "02_ds_stage.sql" >> load_stage.sql
type "03_internal_relationship_stage.sql" >> load_stage.sql
type "04_pc_stage.sql" >> load_stage.sql
type "05_relationship_to_concept.sql" >> load_stage.sql
type "changes_after_QA.sql" >> load_stage.sql 
echo commit; >> load_stage.sql
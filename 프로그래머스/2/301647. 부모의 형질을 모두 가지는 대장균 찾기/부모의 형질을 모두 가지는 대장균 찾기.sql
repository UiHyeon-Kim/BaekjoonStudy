-- 코드를 작성해주세요
SELECT CHILD.ID, CHILD.GENOTYPE, PARENT.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA CHILD JOIN ECOLI_DATA PARENT ON PARENT.ID = CHILD.PARENT_ID
WHERE (CHILD.GENOTYPE & PARENT.GENOTYPE) = PARENT.GENOTYPE
ORDER BY ID
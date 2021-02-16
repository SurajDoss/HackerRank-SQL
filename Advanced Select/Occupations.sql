SET @R1=0,@R2=0,@R3=0,@R4=0;
SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) FROM(

SELECT 
    CASE
        WHEN OCCUPATION = 'Doctor' THEN (@R1:=@R1+1)
        WHEN OCCUPATION = 'Professor' THEN (@R2:=@R2+1)
        WHEN OCCUPATION = 'Singer' THEN (@R3:=@R3+1)
        WHEN OCCUPATION = 'Actor' THEN (@R4:=@R4+1)
    END AS ROW_NUM,
    
    CASE WHEN OCCUPATION ='Doctor' THEN NAME END AS Doctor,
    CASE WHEN OCCUPATION = 'Professor' THEN NAME END AS Professor,
    CASE WHEN OCCUPATION = 'Singer' THEN NAME END AS Singer,
    CASE WHEN OCCUPATION = 'Actor' THEN NAME END AS Actor
    
    FROM OCCUPATIONS
    ORDER BY NAME
)TEMP
GROUP BY ROW_NUM;

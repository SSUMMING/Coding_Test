SELECT CASE 
    WHEN Marks >= 70 THEN Name
    WHEN Marks < 70  THEN 'NULL'
    END AS name_st,
    CASE 
    WHEN Marks >= 90 AND Marks <= 100 THEN 10
    WHEN Marks >= 80 AND Marks <= 89 THEN 9
    WHEN Marks >= 70 AND Marks <= 79 THEN 8
    WHEN Marks >= 60 AND Marks <= 69 THEN 7
    WHEN Marks >= 50 AND Marks <= 59 THEN 6
    WHEN Marks >= 40 AND Marks <= 49 THEN 5
    WHEN Marks >= 30 AND Marks <= 39 THEN 4
    WHEN Marks >= 20 AND Marks <= 29 THEN 3
    WHEN Marks >= 10 AND Marks <= 19 THEN 2
    WHEN Marks >= 0 AND Marks <= 9 THEN 1
    END AS Grade,
    Marks
    
FROM Students
ORDER BY 2 DESC, name_st, 3 
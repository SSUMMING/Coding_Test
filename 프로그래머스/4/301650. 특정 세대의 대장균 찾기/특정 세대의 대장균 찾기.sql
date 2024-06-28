# 3세대란 1세대 -> 2세대  ==> 부모 자식 관계 1차 
# 1세대 아이디
# SELECT ID
# FROM ECOLI_DATA
# WHERE PARENT_ID IS NULL

# 2세대 아이디 (1세대랑 엮어서) : 1세대 아이디가 부모에 있으면 그 해당 아이디는 1세대 자식
WITH second AS(
SELECT ID
FROM ECOLI_DATA
WHERE PARENT_ID IN (SELECT ID
                    FROM ECOLI_DATA
                    WHERE PARENT_ID IS NULL)
)
# 3세대 아이디
SELECT ID
FROM ECOLI_DATA
WHERE PARENT_ID IN (SELECT ID FROM second)

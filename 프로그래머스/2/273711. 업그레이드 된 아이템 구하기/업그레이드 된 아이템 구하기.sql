# 레어 아이템 아이디들 
# SELECT ITEM_ID
# FROM ITEM_INFO
# WHERE RARITY = 'RARE'


SELECT I.ITEM_ID, ITEM_NAME,RARITY
FROM ITEM_INFO I
JOIN ITEM_TREE T ON I.ITEM_ID = T.ITEM_ID
WHERE PARENT_ITEM_ID IN (SELECT ITEM_ID
                        FROM ITEM_INFO
                         WHERE RARITY = 'RARE')
ORDER BY 1 DESC;
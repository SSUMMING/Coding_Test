-- 첫 번째 문자만 대문자이고 나머지는 소문자로 이름을 수정하는 솔루션을 작성하세요.
SELECT user_id, CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT(name,LENGTH(name)-1))) AS name
FROM Users


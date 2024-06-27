SELECT a.id, b.fish_name, a.length
FROM fish_info a
INNER JOIN fish_name_info b ON a.fish_type = b.fish_type
WHERE a.length = (
    SELECT MAX(length)
    FROM fish_info
    WHERE fish_type = a.fish_type
)
ORDER BY a.id;
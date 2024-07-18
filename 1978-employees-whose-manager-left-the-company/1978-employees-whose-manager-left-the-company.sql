-- 급여가 $30000 미만이고 관리자가 회사를 떠난 직원의 ID를 찾으십시오. 관리자가 회사를 떠나면 직원 테이블에서 해당 정보가 삭제되지만 보고서에는 여전히 관리자 ID가 떠난 관리자로 설정되어 있습니다.

SELECT employee_id
FROM Employees
WHERE manager_id NOT IN (SELECT DISTINCT employee_id FROM Employees) 
ORDER BY 1
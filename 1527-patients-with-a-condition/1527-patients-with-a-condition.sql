-- 제1형 당뇨병 환자의 환자 ID, 환자 이름, 상태를 찾는 솔루션을 작성하세요. 제1형 당뇨병은 항상 DIAB1 접두사로 시작됩니다.
SELECT patient_id,patient_name,conditions
FROM Patients  
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'
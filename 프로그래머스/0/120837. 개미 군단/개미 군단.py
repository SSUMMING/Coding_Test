def solution(hp):
    answer = 0
    # 장군개미수
    answer += hp // 5
    hp = hp % 5                # 5로 나누고 난 나머지
    
    # 병정개미 수 
    answer += hp // 3
    hp = hp % 3
    
    # 일개미 수 
    answer += hp // 1
    return answer
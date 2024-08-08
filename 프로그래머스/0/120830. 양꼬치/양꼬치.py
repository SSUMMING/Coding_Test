def solution(n, k):
    answer = 0
    answer += n*12000
    
    if n >= 10:
        actual_drink = k - n//10
        if actual_drink < 0:
            answer += 0
        else:
            answer += 2000*actual_drink
    
    else:
        answer += k*2000
    return answer
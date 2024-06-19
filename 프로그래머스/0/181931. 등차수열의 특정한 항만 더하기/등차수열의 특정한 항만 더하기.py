# a + n*d  n이 중요한 거 

def solution(a, d, included):
    i = 0
    answer=0
    for i in range(len(included)):
        if included[i]:
            answer += a + i*d
    
    return answer
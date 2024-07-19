def solution(n):
    answer = 0
    n = list(map(str,str(n)))
    n.sort(reverse=True)
    answer = int(''.join(n))
    return answer
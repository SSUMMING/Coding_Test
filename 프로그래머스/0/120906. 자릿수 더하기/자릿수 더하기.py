def solution(n):
    answer = 0
    a = list(map(int,str(n)))
    for item in a:
        answer += int(item)
    return answer
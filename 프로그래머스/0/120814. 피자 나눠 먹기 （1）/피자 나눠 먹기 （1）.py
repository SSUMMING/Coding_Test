def solution(n):
    answer = 0
    if n / 7 != int(n/7):
        answer += n//7 +1
    else:
        answer += n //7
    return answer
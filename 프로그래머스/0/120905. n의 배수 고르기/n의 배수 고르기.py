def solution(n, numlist):
    answer = []
    for item in numlist:
        if item % n == 0:
            answer.append(item)
    return answer
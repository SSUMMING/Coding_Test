def solution(arr):
    answer = []
    for i in range(len(arr)):
        for e in range(arr[i]):
            answer.append(arr[i])
    return answer
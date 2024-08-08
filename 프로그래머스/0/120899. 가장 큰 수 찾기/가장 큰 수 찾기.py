def solution(array):
    answer = []
    num = max(array)
    answer.append(num)
    answer.append(array.index(num))
    return answer
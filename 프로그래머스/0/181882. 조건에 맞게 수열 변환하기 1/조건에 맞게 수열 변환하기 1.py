def solution(arr):
    answer = []
    for items in arr:
        if items >= 50 and items % 2 == 0:
            answer.append(items / 2)
        elif items < 50 and items % 2 ==1:
            answer.append(items *2)
        else:
            answer.append(items)
    return answer
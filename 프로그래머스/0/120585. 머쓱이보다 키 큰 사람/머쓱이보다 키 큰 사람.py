def solution(array, height):
    answer = []
    for item in array:
        if height < item:
            answer.append(item)
            
    return len(answer)
    
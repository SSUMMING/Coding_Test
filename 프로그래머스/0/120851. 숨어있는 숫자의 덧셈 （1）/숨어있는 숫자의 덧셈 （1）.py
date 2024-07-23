def solution(my_string):
    answer = 0
    for item in my_string:
        try:
            answer += int(item)
        except:
            pass
    return answer
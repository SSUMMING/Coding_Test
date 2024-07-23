def solution(my_string):
    answer = 0
    for item in my_string:
        if item >= '1' and item <= '9':
            answer += int(item)
    return answer
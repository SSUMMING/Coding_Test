def solution(my_string, is_suffix):
    answer = 0
    pre = []
    for i in range(len(my_string)):
        pre.append(my_string[len(my_string)-1-i:])
        
    if is_suffix in pre:
        answer += 1
    else:
        answer
    return answer
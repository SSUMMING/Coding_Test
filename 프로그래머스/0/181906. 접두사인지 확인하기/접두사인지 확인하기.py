def solution(my_string, is_prefix):
    answer = 0
    pre = []
    for i in range(len(my_string)+1):
        pre.append(my_string[:i])
        
    if is_prefix in pre:
            answer += 1
    else:
            answer
    return answer
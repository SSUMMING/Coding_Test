def solution(my_string, index_list):
    answer = ''
    for item in index_list:
        answer += my_string[item]
    return answer
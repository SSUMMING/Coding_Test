def solution(num_str):
    answer = 0
    lis = []
    for i in range(len(num_str)):
        lis.append(num_str[i])
        answer += int(num_str[i])
    
    return answer
def solution(num_list):
    answer = 0
    a = 1
    b = 0
    for i in range(len(num_list)):
      a *= num_list[i]
      b += num_list[i]
        
    if a < b**2:
        answer = 1
    else:
        answer = 0
    
    return answer

def solution(number, n, m):
    answer = 0
    if number % n == 0 and number % m ==0:
        answer += 1
    else:
        answer += 0
        
    return answer

# if number % n == 0 AND number % m ==0:
#     print(1)
# else:
#     print(0)
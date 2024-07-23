def solution(my_string):
    answer = ''
    odd = ['a','e','i','o','u']
    for e in my_string:
        if e not in odd:
            answer += e
    return answer
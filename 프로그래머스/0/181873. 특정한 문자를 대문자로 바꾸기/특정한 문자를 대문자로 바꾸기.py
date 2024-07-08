# def solution(my_string, alp):
#     answer = ''
#     if alp in my_string:
#         for i in range(len(my_string)):
#             if my_string[i] == alp:
#                 answer += (my_string[:i] + my_string[i].upper() + my_string[i+1:])
#     else:
#         answer += my_string
                
#     return answer

def solution(my_string, alp):
    answer = ''
    for char in my_string:
        if char == alp:
            answer += char.upper()
        else:
            answer += char
    return answer
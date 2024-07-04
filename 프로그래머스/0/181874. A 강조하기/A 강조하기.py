def solution(myString):
    answer = ''
    for items in myString:
        if (items == 'a') or (items == 'A'):
            answer += items.upper() 
        else:
            answer += items.lower() 
    return answer
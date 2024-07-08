def solution(myString, pat):
    answer = 0
    table = str.maketrans('AB','BA')
    myString = myString.translate(table)
    
    if pat in myString: 
        answer += 1
    else:
        answer
    return answer
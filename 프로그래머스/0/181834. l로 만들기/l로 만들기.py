def solution(myString):
    result = []
    
    for char in myString:
        if char < 'l':
            result.append('l')
        else:
            result.append(char)
    return ''.join(result)
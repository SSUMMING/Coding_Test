def solution(s):
    s = s.lower()
    a = []
    b= []
    for item in s:
        if item =='p':
            a.append(item)
        elif item == 'y':
            b.append(item)

    if len(a) == len(b):
        return True
    else:
        return False
   
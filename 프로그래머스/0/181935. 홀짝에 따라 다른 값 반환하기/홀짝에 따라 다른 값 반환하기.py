def solution(n):
    i = 0
    j = 0
    if n % 2 == 1:
        while i < n+1:
            i += 1
            if i % 2 == 0:
                continue
            j += i

    
    if n % 2 == 0:
        while i < n+1:
            i += 1
            if i % 2 ==1:
                continue
            j += i*i
            
    return j
def solution(number, limit, power):
    answer = 0
    s= []
    a = 0
    for i in range(1,number+1):
        for e in range(1,i+1):
             if i % e == 0:
                     a += 1
        s.append(a)
        a=0

    for item in s:
         if item <= limit:
            answer += item
         elif item > limit:
             answer += power
    return answer
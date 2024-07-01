def solution(arr1, arr2):
    answer = 0
    a1 = 0
    a2 = 0
    if len(arr1) != len(arr2):
        if len(arr1) > len(arr2):
            answer += 1
        else: 
            answer += -1

    else:
        for i in range(len(arr1)):
            a1 += arr1[i]
            a2 += arr2[i]
        if a1 > a2:
                answer += 1
        elif a1 == a2:
                answer += 0
        else:
                answer += -1
                
    return answer
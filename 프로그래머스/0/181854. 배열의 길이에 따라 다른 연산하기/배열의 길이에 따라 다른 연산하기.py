def solution(arr, n):
    # 배열의 길이가 홀수인 경우
    if len(arr) % 2 == 1:
        for i in range(0, len(arr), 2):
            arr[i] += n
    # 배열의 길이가 짝수인 경우
    else:
        for i in range(1, len(arr), 2):
            arr[i] += n
    return arr
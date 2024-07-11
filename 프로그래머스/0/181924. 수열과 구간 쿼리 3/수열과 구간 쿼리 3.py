def solution(arr, queries):
    for item in queries:
        i,j = item                ### 리스트값 나타내기!! ⭐
        arr[i],arr[j] = arr[j],arr[i]
        
    return arr
# def solution(arr, delete_list):
#     answer = []
#     for items in arr:
#         if items in delete_list:
#             arr.remove(items)  # 이렇게 하면 remove되고 나서 index 번호가 바뀜 
#         else:
#             answer.append(items)
#     return answer

def solution(arr, delete_list):
    answer = []
    for items in arr:
        if items not in delete_list:
            answer.append(items)
    return answer
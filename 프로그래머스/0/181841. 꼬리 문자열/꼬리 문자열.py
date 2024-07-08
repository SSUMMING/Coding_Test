def solution(str_list, ex):
    for item in str_list[:]:
        if ex in item:
            str_list.remove(item)
            
    return ''.join(str_list)
    
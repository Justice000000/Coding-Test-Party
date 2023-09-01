def solution(my_string, is_suffix):
    
    offset = len(my_string)
    
    for i in range(offset+1):
        if my_string[offset-i:] == is_suffix:
            return 1
        
    return 0
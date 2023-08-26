# https://school.programmers.co.kr/learn/courses/30/lessons/181915

def solution(my_string, index_list):

    res = ''

    for i in index_list:
        res += my_string[i]

    return res

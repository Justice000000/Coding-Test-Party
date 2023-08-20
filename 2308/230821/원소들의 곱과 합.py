# https://school.programmers.co.kr/learn/courses/30/lessons/181929

def solution(num_list):

    add_reduce, mul_reduce = 0, 1
    result = 0

    for num in num_list:
        add_reduce += num
        mul_reduce *= num

    add_reduce = add_reduce ** 2

    if add_reduce > mul_reduce:
        result = 1

    return result

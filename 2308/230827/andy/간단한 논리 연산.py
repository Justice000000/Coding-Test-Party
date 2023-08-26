# https://school.programmers.co.kr/learn/courses/30/lessons/181917

def solution(x1, x2, x3, x4):
    return n_operation(v_operation(x1, x2), v_operation(x3, x4))


def v_operation(a, b):
    if a or b:
        return True
    else:
        return False

def n_operation(a, b):
    if not a or not b:
        return False
    else:
        return True

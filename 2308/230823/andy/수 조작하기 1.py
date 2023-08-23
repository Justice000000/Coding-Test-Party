# https://school.programmers.co.kr/learn/courses/30/lessons/181926

def solution(n, control):

    for item in control:
        if item == 'w':
            n += 1
        elif item == 's':
            n -= 1
        elif item == 'd':
            n += 10
        elif item == 'a':
            n -= 10

    return n

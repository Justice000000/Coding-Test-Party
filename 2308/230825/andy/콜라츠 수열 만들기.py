# https://school.programmers.co.kr/learn/courses/30/lessons/181919

def solution(n):

    stack = [n]

    while n != 1:
        if n % 2 == 0:
            n //= 2
            stack.append(n)
        else:
            n = 3 * n + 1
            stack.append(n)

    return stack

# https://school.programmers.co.kr/learn/courses/30/lessons/181914

def solution(number):

    sum_ = 0

    for digit in number:
        sum_ += int(digit)

    return sum_ % 9

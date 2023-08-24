# https://school.programmers.co.kr/learn/courses/30/lessons/181902

def solution(my_string):
    answer = [0] * 52

    for char in my_string:
        if ord(char) >= 97:
            i = ord(char) - 71
            answer[i] += 1
        else:
            i = ord(char) - 65
            answer[i] += 1

    return answer

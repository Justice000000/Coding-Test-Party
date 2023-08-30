# https://school.programmers.co.kr/learn/courses/30/lessons/181912

def solution(int_strs, k, s, l):

    ans = []

    for int_str in int_strs:
        temp = int_str[s:s+l]
        if int(temp) > k:
            ans.append(int(temp))

    return ans

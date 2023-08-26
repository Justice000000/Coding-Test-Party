# https://school.programmers.co.kr/learn/courses/30/lessons/181924

def solution(arr, queries):

    for query in queries:
        i, j = query[0], query[1]
        arr[i], arr[j] = arr[j], arr[i]

    return arr

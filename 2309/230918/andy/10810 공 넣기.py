from sys import stdin as st

# st = open('input.txt', 'r')
# input = st.readline

n, m = list(map(int, input().split()))

basket = [0] * n

for _ in range(m):
    i, j, k = map(int, input().split())

    for index in range(i-1, j):
        basket[index] = k

print(*basket)

# https://www.acmicpc.net/problem/10810

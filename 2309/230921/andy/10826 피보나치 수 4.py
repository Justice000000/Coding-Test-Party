# https://www.acmicpc.net/problem/10826

import sys

sys.stdin = open("input.txt", "r")
input = sys.stdin.readline

n = int(input())

def fibonacci_dp(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1

    dp = [0, 1]

    for i in range(2, n+1):
        num = dp[i - 1] + dp[i - 2]
        dp.append(num)

    return dp[n]

print(fibonacci_dp(n))

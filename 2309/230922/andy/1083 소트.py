import sys

sys.stdin = open("input.txt", "r")
input = sys.stdin.readline

# N, A, S 입력
N = int(input())
A = list(map(int, input().split()))
S = int(input())

# N만큼 반복
for i in range(N):
    max_ele = max(A[i: min(i + S + 1, N)])
    max_idx = A.index(max_ele)

    # 현재 위치(i)부터 S까지 더한 위치 사이에 최댓값(max_ele)을 찾아 현재 위치(i)로 정렬
    for j in range(max_idx, i, -1):
        A[j], A[j-1] = A[j-1], A[j]

    # 정렬한 만큼 S 감소
    S -= max_idx - i

    # S를 모두 사용 시 반복문 탈출
    if S <= 0:
        break

# 리스트 A 요소 출력
print(*A)

# for ele in A:
#     print(ele, end=' ')

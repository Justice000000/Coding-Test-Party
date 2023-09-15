def solution(sequence, k):    
    answer = []
    sum = 0
    l = 0
    r = 0
    
    for (i, n) in enumerate(sequence):
        r = i
        sum += n
        while sum > k and l <= r : 
            sum -= sequence[l]
            l += 1        
        if sum == k:
            answer.append([l, r])
                
    answer.sort(key=lambda x: (x[1]-x[0], x[0]))
    
    return answer[0]

print(solution([1, 1, 1, 2, 3, 4, 5], 5))
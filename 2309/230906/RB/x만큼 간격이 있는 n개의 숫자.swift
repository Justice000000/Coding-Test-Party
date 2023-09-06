//
//  main.swift
//  x만큼 간격이 있는 n개의 숫자
//
//  Created by 백래훈 on 2023/09/07.
//

import Foundation

// 나의 풀이
func solution(_ x: Int, _ n: Int) -> [Int64] {
    
    var result: [Int64] = []
    
    for i in 1...n {
        result.append(Int64(x * i))
    }
    
    
    print(result)
    return result
}

// 고차함수 풀이
func solution2(_ x: Int, _ n: Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

solution(2, 5)

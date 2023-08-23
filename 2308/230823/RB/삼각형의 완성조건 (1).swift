//
//  main.swift
//  삼각형의 완성조건 (1)
//
//  Created by 백래훈 on 2023/08/23.
//

import Foundation

func solution(_ sides: [Int]) -> Int {
    let sorted: [Int] = sides.sorted(by: >)
    return sorted[0] < sorted[1] + sorted[2] ? 1 : 2
}

solution([199, 72, 222])

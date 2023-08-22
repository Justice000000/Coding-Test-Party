//
//  main.swift
//  배열 두배 만들기
//
//  Created by 백래훈 on 2023/08/22.
//

import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 2 }
}

solution([1, 2, 3, 4, 5])

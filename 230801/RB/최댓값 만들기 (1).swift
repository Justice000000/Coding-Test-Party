//
//  main.swift
//  최댓값 만들기 (1)
//
//  Created by 백래훈 on 2023/08/01.
//

import Foundation

func solution(_ numbers: [Int]) -> Int {
    
    var sortedNumbers = numbers.sorted()
    
    return sortedNumbers[sortedNumbers.count - 1] * sortedNumbers[sortedNumbers.count - 2]
}


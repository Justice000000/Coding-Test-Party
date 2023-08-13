//
//  main.swift
//  배열의 평균값
//
//  Created by 백래훈 on 2023/07/31.
//

import Foundation

func solution(_ numbers: [Int]) -> Double {
    
    var average: Double = Double(numbers.reduce(0, { $0 + $1 })) / Double(numbers.count)
    
    return average
}

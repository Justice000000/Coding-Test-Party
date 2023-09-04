//
//  main.swift
//  평균 구하기
//
//  Created by 백래훈 on 2023/09/04.
//

import Foundation

func solution(_ arr: [Int]) -> Double {
    
    var result: Double = 0
    
    for i in arr {
        result += Double(i)
    }
    
    return Double(result) / Double(arr.count)
}

//
//  main.swift
//  배열의 유사도
//
//  Created by 백래훈 on 2023/08/01.
//

import Foundation

func solution(_ s1: [String], _ s2: [String]) -> Int {
    
    var result = 0
    for i in s1 {
        for n in 0..<s2.count {
            if i == s2[n] {
                result += 1
            }
        }
    }
    return result
}


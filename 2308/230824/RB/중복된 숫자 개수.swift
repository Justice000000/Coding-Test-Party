//
//  main.swift
//  중복된 숫자 개수
//
//  Created by 백래훈 on 2023/08/25.
//

import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    
    var result = 0
    
    for i in 0..<array.count {
        if n == array[i] {
            result += 1
        }
    }
    return result
}

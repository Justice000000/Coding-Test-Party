//
//  main.swift
//  숫자 비교하기
//
//  Created by 백래훈 on 2023/07/25.
//

import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    var result = 0
    
    if num1 != num2 {
        result = -1
    } else {
        result = 1
    }
    
    return result
}

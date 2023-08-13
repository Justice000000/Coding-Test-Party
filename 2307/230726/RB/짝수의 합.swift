//
//  main.swift
//  짝수의 합
//
//  Created by 백래훈 on 2023/07/26.
//

import Foundation

func solution(_ n: Int) -> Int {
    var result = 0
    
    for i in 0...n {
        if i % 2 == 0 {
            result += i
        }
    }
    return result
}

//
//  main.swift
//  피자 나눠 먹기 (1)
//
//  Created by 백래훈 on 2023/07/31.
//

import Foundation

func solution(_ n: Int) -> Int {
    
    var result = 0
    
    if n % 7 == 0 {
        result = n / 7
    } else {
        result = n / 7 + 1
    }
    
    return result
}

//
//  main.swift
//  피자 나눠 먹기 (3)
//
//  Created by 백래훈 on 2023/08/16.
//

import Foundation

func solution(_ slice: Int, _ n: Int) -> Int {
    
    var result = 0
    
    if n % slice != 0 {
        result = (n / slice) + 1
    } else {
        result = (n / slice)
    }
    print(result)
    return result
}

solution(7, 10)

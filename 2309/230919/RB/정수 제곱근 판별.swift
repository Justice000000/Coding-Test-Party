//
//  main.swift
//  정수 제곱근 판별
//
//  Created by 백래훈 on 2023/09/20.
//

import Foundation

func solution(_ n: Int64) -> Int64 {
    
    var result = sqrt(Double(n))
    
    if ceil(result) > result {
        return -1
    } else {
        return Int64(pow(result + 1, 2))
    }
}

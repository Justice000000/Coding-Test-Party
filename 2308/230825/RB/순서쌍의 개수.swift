//
//  main.swift
//  순서쌍의 개수
//
//  Created by 백래훈 on 2023/08/26.
//

import Foundation

func solution(_ n:Int) -> Int {
    
    var result = 0
    
    for i in 1...n {
        if n % i == 0 {
            result += 1
        }
    }
    return result
}

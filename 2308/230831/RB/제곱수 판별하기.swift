//
//  main.swift
//  제곱수 판별하기
//
//  Created by 백래훈 on 2023/09/01.
//

import Foundation

func solution(_ n: Int) -> Int {
    
    var count: Int = 1
    
    while count <= n {
        if count * count == n {
            return 1
        }
        count += 1
    }
    return 2
}

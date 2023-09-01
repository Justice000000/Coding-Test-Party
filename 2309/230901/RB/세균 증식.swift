//
//  main.swift
//  세균 증식
//
//  Created by 백래훈 on 2023/09/01.
//

import Foundation

func solution(_ n: Int, _ t: Int) -> Int {
    
    var result = n
    
    for _ in 0..<t {
        result *= 2
    }
    
    return result
}

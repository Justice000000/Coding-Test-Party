//
//  main.swift
//  짝수는 싫어요
//
//  Created by 백래훈 on 2023/09/01.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    
    var array: [Int] = []
    
    for i in 0...n {
        if i % 2 == 1 {
            array.append(i)
        }
    }
    
    return array
}

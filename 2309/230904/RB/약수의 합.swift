//
//  main.swift
//  약수의 합
//
//  Created by 백래훈 on 2023/09/04.
//

import Foundation

func solution(_ n: Int) -> Int {
    
    var result = 0
    
    if n > 0 {
        for i in 1...n {
            if n % i == 0 {
                result += i
            }
        }
        return result
    }
    return 0
}


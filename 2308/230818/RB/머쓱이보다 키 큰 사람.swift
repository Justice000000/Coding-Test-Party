//
//  main.swift
//  머쓱이보다 키 큰 사람
//
//  Created by 백래훈 on 2023/08/18.
//

import Foundation

func solution(_ array: [Int], _ height: Int) -> Int {
    
    var count = 0
    array.map {
        if $0 > height {
            count += 1
        }
    }
    return count
}


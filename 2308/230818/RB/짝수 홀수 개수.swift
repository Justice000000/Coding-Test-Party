//
//  main.swift
//  짝수 홀수 개수
//
//  Created by 백래훈 on 2023/08/18.
//

import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    var odd = 0
    var even = 0
    
    num_list.map {
        if $0 % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    
    return [even, odd]
}

//
//  main.swift
//  점의 위치 구하기
//
//  Created by 백래훈 on 2023/08/03.
//

import Foundation

func solution(_ dot: [Int]) -> Int {
    
    if dot.first! > 0 && dot.last! > 0 {
        return 1
    } else if dot.first! < 0 && dot.last! > 0 {
        return 2
    } else if dot.first! < 0 && dot.last! < 0 {
        return 3
    } else if dot.first! > 0 && dot.last! < 0 {
        return 4
    }
    return 0
}

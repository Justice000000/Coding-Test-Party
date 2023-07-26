//
//  main.swift
//  각도기
//
//  Created by 백래훈 on 2023/07/26.
//

import Foundation

func solution(_ angle: Int) -> Int {
    var result: Int
    
    if angle == 180 {
        result = 4
    } else if angle > 90 && angle < 180 {
        result = 3
    } else if angle == 90 {
        result = 2
    } else if angle < 90 {
        result = 1
    } else {
        result = 0
    }
    return result
}

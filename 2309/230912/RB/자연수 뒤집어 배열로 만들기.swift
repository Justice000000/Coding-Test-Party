//
//  main.swift
//  자연수 뒤집어 배열로 만들기
//
//  Created by 백래훈 on 2023/09/13.
//

import Foundation

func solution(_ n: Int64) -> [Int] {
    
    var result: [Int] = []
    
    for i in String(n).reversed() {
        result.append(Int(String(i))!)
    }
    
    return result
}

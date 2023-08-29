//
//  main.swift
//  자릿수 더하기
//
//  Created by 백래훈 on 2023/08/30.
//

import Foundation

func solution(_ n: Int) -> Int {
    var answer = 0
    
    for i in String(n) {
        answer += Int(String(i))!
    }
    
    return answer
}

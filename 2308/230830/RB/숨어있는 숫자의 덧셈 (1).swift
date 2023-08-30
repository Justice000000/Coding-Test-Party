//
//  main.swift
//  숨어있는 숫자의 덧셈 (1)
//
//  Created by 백래훈 on 2023/08/31.
//

import Foundation

func solution(_ my_string: String) -> Int {
    
    return my_string.compactMap { Int(String($0)) }.reduce(0, +)
}

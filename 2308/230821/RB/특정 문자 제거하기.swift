//
//  main.swift
//  특정 문자 제거하기
//
//  Created by 백래훈 on 2023/08/22.
//

import Foundation

func solution(_ my_string: String, _ letter: String) -> String {
    return my_string.filter { String($0) != letter }
    
}

solution("abbbbbbcdefghi", "b")

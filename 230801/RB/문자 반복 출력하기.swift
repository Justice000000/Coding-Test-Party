//
//  main.swift
//  문자 반복 출력하기
//
//  Created by 백래훈 on 2023/08/01.
//

import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    
    var result = ""
    
    for s in my_string {
        for _ in 0..<n {
            result.append(s)
        }
    }
    return result
}


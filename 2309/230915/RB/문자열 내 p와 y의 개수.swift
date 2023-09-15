//
//  main.swift
//  문자열 내 p와 y의 개수
//
//  Created by 백래훈 on 2023/09/15.
//

import Foundation

func solution(_ s: String) -> Bool {
    
    var ans: Bool = false
    var p = 0
    var y = 0
   
    var word = s.lowercased()
    
    for i in word {
        if i == "p" {
            p += 1
        } else if i == "y" {
            y += 1
        }
    }
    
    if p == y {
        ans = true
    } else {
        ans = false
    }

    return ans
}

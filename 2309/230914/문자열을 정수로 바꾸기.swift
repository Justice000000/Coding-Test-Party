//
//  main.swift
//  문자열을 정수로 바꾸기
//
//  Created by 백래훈 on 2023/09/14.
//

import Foundation

func solution(_ s: String) -> Int {
    
    var result = 0
    var value = ""
    
    if s[0] == "-" {
        for i in 1..<s.count {
            value += s[i]!
        }
        return -Int(value)!
    } else {
        value = s
        return Int(value)!
    }
}

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        
        let result = index(startIndex, offsetBy: idx)
        return String(self[result])
        
    }
}

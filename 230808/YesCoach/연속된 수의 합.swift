//
//  연속된 수의 합.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/08/08.
//

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {

    var result: [Int] = []


    if num % 2 == 0 {
        for i in 0..<num {
            result.append((total / num) + (i + 1 - num/2))
        }
    } else {
        for i in 0..<num {
            result.append((total / num) + (i - num/2))
        }
    }

    return result
}

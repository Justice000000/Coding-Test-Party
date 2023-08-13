//
//  배열 조각하기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/181893
//
//  Created by 박태현 on 2023/08/09.
//

import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    query.enumerated().forEach {
        if $0.0 % 2 == 0 {
            result = Array(result[0...$0.1])
        } else {
            result = Array(result[$0.1...])
        }
    }
    return result
}

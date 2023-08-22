//
//  햄버거 만들기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/133502
//
//  Created by 박태현 on 2023/08/22.
//

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var answer = 0
    var stack: [Int] = []

    for i in ingredient {
        stack.append(i)

        let count = stack.count
        if count < 4 { continue }

        if Array(stack.suffix(4)) == [1,2,3,1] {
            stack.removeLast(4)
            answer += 1
        }
    }
    return answer
}

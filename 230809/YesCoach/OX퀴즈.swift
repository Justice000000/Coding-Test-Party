//
//  OX퀴즈.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/120907
//
//  Created by 박태현 on 2023/08/09.
//

import Foundation

func solution(_ quiz:[String]) -> [String] {
    let temp = quiz.map{$0.components(separatedBy: " ")}
    let numbers = temp.map{$0.map{Int($0)}.compactMap{$0}}
    let operators = temp.map{$0.filter{$0 == "+" || $0 == "-"}}

    var result: [String] = []

    for i in 0..<quiz.count {
        if operators[i][0] == "+" {
            result.append(numbers[i][0] + numbers[i][1] == numbers[i][2] ? "O" : "X")
        } else {
            result.append(numbers[i][0] - numbers[i][1] == numbers[i][2] ? "O" : "X")
        }
    }

    return result
}

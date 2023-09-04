//
//  추억 점수.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/176963
//
//  Created by 박태현 on 2023/09/05.
//

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic: [String: Int] = [:]
    var answer: [Int] = []
    name.enumerated().forEach { (index, value) in
        dic[value] = yearning[index]
    }

    photo.forEach {
        answer.append($0.map{ dic[$0] ?? 0}.reduce(0) {$0 + $1})
    }

    return answer
}

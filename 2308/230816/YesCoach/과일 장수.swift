//
//  과일 장수.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/135808
//
//  Created by 박태현 on 2023/08/16.
//

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {

    let sortedScore = score.sorted { $0 > $1 }
    var result = 0

    for i in stride(from: m-1, to: sortedScore.count, by: +m) {
        result += sortedScore[i] * m
    }

    return result
}

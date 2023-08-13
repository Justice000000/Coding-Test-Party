//
//  평행.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/120875#
//  Created by 박태현 on 2023/07/27.
//

import Foundation

func solution(_ dots:[[Int]]) -> Int {

    let result: [Bool] = [
        getIncline(dots[0], dots[1]) == getIncline(dots[2], dots[3]),
        getIncline(dots[0], dots[2]) == getIncline(dots[1], dots[3]),
        getIncline(dots[0], dots[3]) == getIncline(dots[1], dots[2])
    ]

    return result.contains(true) ? 1 : 0
}

func getIncline(_ lhd: [Int], _ rhd: [Int]) -> Double {
    return Double(rhd[1] - lhd[1]) / Double(rhd[0] - lhd[0])
}

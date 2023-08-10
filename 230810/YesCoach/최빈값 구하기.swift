//
//  최빈값 구하기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/120812
//
//  Created by 박태현 on 2023/08/10.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    var result: [Int: Int] = [:]

    var temp = Set(array)

    for item in temp {
        result[item] = array.filter{$0==item}.count
    }

    let sortedResult = result.sorted{$0.value > $1.value}

    if sortedResult.count > 1 && sortedResult[0].value == sortedResult[1].value {
        return -1
    }
    return sortedResult[0].key
}

//
//  겹치는 선분의 길이.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/120876
//  Created by 박태현 on 2023/08/02.
//

import Foundation

func solution(_ lines:[[Int]]) -> Int {

    let line = lines.flatMap{$0}.sorted{$0 < $1}
    let range = (line[0]...line[line.count-1])

    let rangeArray = lines.map{($0[0]..<$0[1])}
    var result = 0

    for i in range {
        if rangeArray.filter{$0.contains(i)}.count > 1 {
            result += 1
        }
    }

    return result
}

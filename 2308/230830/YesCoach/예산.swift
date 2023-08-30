//
//  예산.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12982
//
//  Created by 박태현 on 2023/08/30.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {

    var sortedArray = d.sorted { $0 < $1 }

    var spendBudget = 0
    var count = 0

    for i in 0..<sortedArray.count {
        if spendBudget + sortedArray[i] <= budget {
            spendBudget += sortedArray[i]
            count += 1
        } else {
            break
        }
    }

    return count
}

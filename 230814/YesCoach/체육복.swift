//
//  체육복.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/42862
//
//  Created by 박태현 on 2023/08/14.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostSet = Set(lost).subtracting(reserve)
    let reserveSet = Set(reserve).subtracting(lost).map { $0 }.sorted { $0 < $1 }

    for reserve in reserveSet {
        if reserve > 1, lostSet.contains(reserve - 1) {
            lostSet.remove(reserve - 1)
        } else if reserve < n, lostSet.contains(reserve + 1) {
            lostSet.remove(reserve + 1)
        }
    }

    return n - lostSet.count
}

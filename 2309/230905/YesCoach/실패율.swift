//
//  실패율.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/06.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var fail: [Int:Double] = [:]
    var total = stages.count

    for i in 1...N {
        let blocked = stages.filter{$0 == i}.count
        fail[i] = Double(blocked)/Double(total)
        total -= blocked
    }

    return fail.sorted(by: <).sorted{$0.value>$1.value}.map{$0.key}
}

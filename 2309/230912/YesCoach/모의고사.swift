//
//  모의고사.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/13.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {

    let arr = (
        a: [1,2,3,4,5],
        b: [2,1,2,3,2,4,2,5],
        c: [3,3,1,1,2,2,4,4,5,5]
    )

    var point = [1:0, 2:0, 3:0]

    for (index, value) in answers.enumerated() {
        if value == arr.a[index % 5] { point[1]! += 1 }
        if value == arr.b[index % 8] { point[2]! += 1 }
        if value == arr.c[index % 10] { point[3]! += 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

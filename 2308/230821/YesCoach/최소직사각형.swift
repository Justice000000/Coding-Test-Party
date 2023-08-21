//
//  최소직사각형.swift
//  CodingTest
//  https://school.programmers.co.kr/learn/courses/30/lessons/86491
//
//  Created by 박태현 on 2023/08/21.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var sizeArray = sizes
    var largeArray: [Int] = []
    var smallArray: [Int] = []

    for i in 0..<sizes.count {
        sizeArray[i].sort()
        largeArray.append(sizeArray[i][0])
        smallArray.append(sizeArray[i][1])
    }

    return largeArray.max()! * smallArray.max()!
}


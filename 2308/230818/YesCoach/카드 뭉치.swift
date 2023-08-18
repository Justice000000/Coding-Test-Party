//
//  카드 뭉치.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/159994
//
//  Created by 박태현 on 2023/08/18.
//

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {

    var cards1Arr = cards1[cards1.indices]
    var cards2Arr = cards2[cards2.indices]

    var result: String = "Yes"

    for i in goal {
        if let card1 = cards1Arr.first, i == card1 {
            _ = cards1Arr.popFirst()
        } else if let card2 = cards2Arr.first, i == card2 {
            _ = cards2Arr.popFirst()
        } else {
            result = "No"
            break
        }
    }
    return result
}

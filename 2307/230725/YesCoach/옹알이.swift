//
//  옹알이.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/07/25.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    let arr = ["aya", "ye", "woo", "ma"]
    var result: [String] = []

    for babble in babbling {
        var item = babble
        for string in arr {
            item = item.replacingOccurrences(of: string, with: "0")
        }
        result.append(item)
    }

    return result.map{$0.components(separatedBy: "0").joined()}.filter{ $0 == "" }.count
}

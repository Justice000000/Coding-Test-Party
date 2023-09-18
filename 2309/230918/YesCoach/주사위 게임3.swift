//
//  주사위 게임3.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/19.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {

    var dic: [Int: Int] = [:]

    for item in [a, b, c, d] {
        dic[item, default: 0] += 1
    }

    let array = Array(dic).sorted { $0.value > $1.value }

    switch array.count {
        case 1: return a * 1111
        case 2:
            var num1 = array[0].key
            var num2 = array[1].key
            if array[0].value == 3 {
                return Int(
                    pow(Float(num1 * 10 + num2), 2.0)
                )
            }
            return (num1 + num2) * abs(num1 - num2)
        case 3:
            return array[1].key * array[2].key
        case 4:
            return array.sorted {$0.key < $1.key}[0].key
        default: return 0
    }
}

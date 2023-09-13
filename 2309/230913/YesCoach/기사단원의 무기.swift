//
//  기사단원의 무기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/14.
//

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {

    var unitArray: [Int] = []

    for i in 1...number {
        unitArray.append(getPower(i))
    }

    return unitArray
        .map {$0 > limit ? power : $0}
        .reduce(0, +)
}

func getPower(_ num: Int) -> Int {
    var power = 0

    switch num {
        case 1: return 1
        case 2, 3: return 2
        default:
        for i in 1...Int(sqrt(Double(num))) {
            if num % i == 0 {
                power += 2
            }
            if i * i == num {
                power -= 1
            }
        }
        return power
    }
}

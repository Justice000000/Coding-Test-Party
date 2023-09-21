//
//  푸드 파이트 대회.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/22.
//

import Foundation

func solution(_ food:[Int]) -> String {
    var answer: String = ""

    let arr = food.map {
        $0 / 2
    }

    print(arr)
    for i in 1..<arr.count {
        for j in 0..<arr[i] {
            answer += "\(i)"
        }
    }
    answer += "0"
    for i in (1..<arr.count).reversed() {
        for j in 0..<arr[i] {
            answer += "\(i)"
        }
    }

    return answer
}

//
//  명예의 전당(1).swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/138477
//
//  Created by 박태현 on 2023/08/11.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer: [Int] = []

    var arr: [Int] = []
    for i in 0..<score.count {
        arr.append(score[i])

        let sortedArr = arr.sorted { return $0 > $1 }

        if k > i {
            answer.append(sortedArr.last!)
        } else {
            answer.append(sortedArr[k-1])
        }
    }

    return answer
}

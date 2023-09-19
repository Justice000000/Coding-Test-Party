//
//  덧칠하기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/20.
//

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {

    var answer = 0

    section.reduce(section.first!) {
        if $0 + m - 1 < $1 {
            answer += 1
            return $1
        }
        return $0
    }

    return answer + 1
}

//
//  콜라문제.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/21.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {

    var answer = 0
    var count = 0
    var left = 0
    var next = n

    repeat {
        // 교환한 콜라 병 수
        count = next / a * b
        // 교환하고 남은 콜라 병 수
        left = next % a
        // 다음에는 교환 받은 병 + 남은 병 으로 진행
        next = count + left
        // 교환 받은 건 count up
        answer += count
    } while next >= a

    return answer
}

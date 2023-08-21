//
//  부족한 금액 계산하기.swift
//  CodingTest
//  https://school.programmers.co.kr/learn/courses/30/lessons/82612
//
//  Created by 박태현 on 2023/08/21.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1

    var total: Int = 0
    for i in 1...count {
        total += price * i
    }
    if total <= money { return 0 }
    return Int64(total-money)
}

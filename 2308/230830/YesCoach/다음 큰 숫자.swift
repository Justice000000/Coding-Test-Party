//
//  다음 큰 숫자.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12911
//
//  Created by 박태현 on 2023/08/30.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var oneCount = Array(String(n, radix: 2)).filter{$0=="1"}.count

    var num = n+1

    while true {
        if Array(String(num, radix: 2)).filter{$0=="1"}.count == oneCount {
            return num
        }
        num += 1
    }
}

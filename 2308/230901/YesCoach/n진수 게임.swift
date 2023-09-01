//
//  n진수 게임.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/17687
//
//  Created by 박태현 on 2023/09/02.
//

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var num = 0
    var turn = 1
    var answer = ""

    var queue: [String] = []

    while answer.count != t {
        if queue.isEmpty {
            queue += String(num, radix: n).uppercased().map{String($0)}
            num += 1
        }
        let next = queue.removeFirst()
        if turn == p {
            answer.append(next)
        }
        turn = turn == m ? 1 : turn + 1
    }

    return answer
}

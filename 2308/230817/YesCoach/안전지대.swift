//
//  안전지대.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/120866
//
//  Created by 박태현 on 2023/08/17.
//

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var results: [[Int]] = Array(repeating: Array(repeating: 0, count: board.count), count: board.count)

    let length = board.count

    for (i, arr) in board.enumerated() {
        for (j, item) in arr.enumerated() {
            if board[i][j] == 1 {
                for x in i-1...i+1 {
                    for y in j-1...j+1 {
                        if x >= 0 && x < length && y >= 0 && y < length {
                            results[x][y] = 1
                        }
                    }
                }
            }
        }
    }

    return results.flatMap{$0}.filter{$0 == 0}.count
}

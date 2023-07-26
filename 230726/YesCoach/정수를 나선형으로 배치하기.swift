//
//  정수를 나선형으로 배치하기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/181832
//  Created by 박태현 on 2023/07/26.
//

import Foundation

func solution(_ n:Int) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    var (y, x) = (0, 0)

    for i in 1...(n * n) {
        arr[y][x] = i

        if (x < n-1) && (arr[y][x+1] == 0) {
            if (y > 1) && (arr[y-1][x] == 0) {
                y -= 1
                continue
            }
            x += 1
            continue
        }
        if y < n-1 && arr[y+1][x] == 0 {
            y += 1
            continue
        }
        if x > 0 && arr[y][x-1] == 0 {
            x -= 1
            continue
        }
        if y > 0 && arr[y-1][x] == 0 {
            y -= 1
            continue
        }
    }

    return arr
}

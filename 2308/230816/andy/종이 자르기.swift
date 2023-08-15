// 프로그래머스 - 종이 자르기 https://school.programmers.co.kr/learn/courses/30/lessons/120922

import Foundation

func solution(_ M: Int, _ N: Int) -> Int {

    if M == 1 && N == 1 { return 0 }

    if M <= N {
        return (M-1) + M * (N-1)
    } else {
        return (N-1) + N * (M-1)
    }
}

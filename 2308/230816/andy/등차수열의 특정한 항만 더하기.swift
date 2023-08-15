// 프로그래머스 - 등차수열의 특정한 항만 더하기 https://school.programmers.co.kr/learn/courses/30/lessons/181931

import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {

    var temp = a
    var sum = 0

    for isIncluded in included {
        if isIncluded { sum += temp }
        temp += d
    }

    return sum
}

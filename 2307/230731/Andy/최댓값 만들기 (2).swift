// 프로그래머스
// 최댓값 만들기 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/120862

import Foundation

func solution(_ numbers: [Int]) -> Int {
    
    var posNum = numbers.filter { $0 > 0 }.sorted(by: >)
    var negNum = numbers.filter { $0 < 0 }.sorted(by: <)
    var posMax = 0
    var negMax = 0
    
    if posNum.count >= 2 {
        posMax = posNum[0] * posNum[1]
    }
    
    if negNum.count >= 2 {
        negMax = negNum[0] * negNum[1]
    }
    
    if posMax == 0 && negMax == 0 {
        return numbers[0] * numbers[1]
    }
    
    return max(posMax, negMax)
}
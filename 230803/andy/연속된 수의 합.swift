// 프로그래머스
// 연속된 수의 합
// https://school.programmers.co.kr/learn/courses/30/lessons/120923

import Foundation

func solution(_ num: Int, _ total: Int) -> [Int] {
    
    var result = [Int]()
    
    let range = num / 2
    let midNum = total / num
    
    if num % 2 == 1 {
        result = Array(midNum-range...midNum+range)
    } else {
        result = Array(midNum-range+1...midNum+range)
    }
    
    return result
}
// 프로그래머스 - 전국 대회 선발 고사 https://school.programmers.co.kr/learn/courses/30/lessons/181851

import Foundation

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
    
    var dict = [Int: Int]()
    let count = rank.count
    var result = 0
    
    for i in 0...count-1 {
        if attendance[i] { dict[rank[i]] = i }
    }
    
    let validRanks = dict.keys.sorted()
    
    result += dict[validRanks[0]]! * 10000
    result += dict[validRanks[1]]! * 100
    result += dict[validRanks[2]]! * 1
    
    return result
}
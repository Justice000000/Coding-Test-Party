// 프로그래머스
// k의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/120887

import Foundation

func solution(_ i: Int, _ j: Int, _ k: Int) -> Int {
    
    var count = 0
    
    for num in i...j {
        for char in String(num) {
            if char == Character(String(k)) {
                count += 1
            }
        }
    }
    
    return count
}

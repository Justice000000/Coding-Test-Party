// 프로그래머스 - 배열 만들기 2 https://school.programmers.co.kr/learn/courses/30/lessons/181921

import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    
    var result = [Int]()
    
    outerLoop: for num in l...r {
        guard num % 5 == 0 else { continue }
        
        for digit in String(num) {
            guard digit == "0" || digit == "5" else { continue outerLoop }
        }
        
        result.append(num)
    }
    
    if result.isEmpty { return [-1] }
    
    return result
}
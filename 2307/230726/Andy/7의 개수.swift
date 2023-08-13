// https://school.programmers.co.kr/learn/courses/30/lessons/120912
import Foundation

func solution(_ array: [Int]) -> Int {
    var sevenCount = 0
    
    for item in array.map { String($0) } {
        for char in item {
            if char == "7" {
                sevenCount += 1
            }
        }
    }
    
    return sevenCount
}
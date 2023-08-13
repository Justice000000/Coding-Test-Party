import Foundation

// 프로그래머스
// https://school.programmers.co.kr/learn/courses/30/lessons/181937
func solution(_ num: Int, _ n: Int) -> Int {
    var result = 0
    
    if num % n == 0 {
        result = 1
    }
    return result
}

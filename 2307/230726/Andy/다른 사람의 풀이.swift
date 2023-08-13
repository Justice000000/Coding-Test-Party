// https://school.programmers.co.kr/learn/courses/30/lessons/120583/solution_groups?language=swift
import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    
    let result = array.filter { $0 == n }.count

    return result
}
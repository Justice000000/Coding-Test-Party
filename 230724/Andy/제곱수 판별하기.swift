// https://school.programmers.co.kr/learn/courses/30/lessons/120909
import Foundation

func solution(_ n: Int) -> Int {
    let squareNumber = Int(Double(n).squareRoot())
    var result = 2
    
    if squareNumber * squareNumber == n { result = 1 }
    
    return result
}
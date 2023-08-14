import Foundation


//등차수열의 특정한 항만 더하기

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var num = a
    var sum = 0
    for i in 0..<included.count {
        if included[i] {
            sum += num
        }
        num += d
    }
    return sum
}


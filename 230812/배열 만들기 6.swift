// [프로그래머스] 배열 만들기 6 https://school.programmers.co.kr/learn/courses/30/lessons/181859

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var i = 0
    var stk = [Int]()

    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else if stk[stk.count - 1] == arr[i] {
            stk.popLast()!
            i += 1
        } else {
            stk.append(arr[i])
            i += 1
        }
    }

    if stk.isEmpty { return [-1] }

    return stk
}

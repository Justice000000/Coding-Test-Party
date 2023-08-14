// [프로그래머스] 무작위로 K개의 수 뽑기 https://school.programmers.co.kr/learn/courses/30/lessons/181858

import Foundation

func solution(_ arr: [Int], _ k: Int) -> [Int] {

    var stack = [Int]()

    for item in arr {
        if stack.count == k { return stack }
        else if !stack.contains(item) { stack.append(item) }
    }

    let gap = k - stack.count

    if gap != 0 {
        for _ in 1...gap {
            stack.append(-1)
        }
    }

    return stack
}

// https://programmers.co.kr/learn/challenges
import Foundation

func solution(_ num: Int, _ k: Int) -> Int {

    let num = String(num).map { Int(String($0)) }

    for i in num.indices {
        if num[i] == k {
            return i + 1
        }
    }

    return -1
}

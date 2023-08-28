import UIKit

//수 조작하기(못품)

func solution(_ numLog:[Int]) -> String {
    let log: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    return (1..<numLog.count).map { log[numLog[$0] - numLog[$0 - 1]]! }.joined()
}


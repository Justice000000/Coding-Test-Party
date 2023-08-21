import UIKit
//이어 붙인 수


func solution(_ num_list:[Int]) -> Int {
    var sumA = ""
    var sumB = ""

    for i in num_list {
        if i % 2 == 0 {
            sumA += String(i)
        } else {
            sumB += String(i)
        }
    }

    return Int(sumA)! + Int(sumB)!
}

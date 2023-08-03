// 프로그래머스
// 숨어있는 숫자의 덧셈 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/120864#

import Foundation

func solution(_ my_string: String) -> Int {
    
    var numList = [Int]()
    var temp = ""
    
    for char in my_string {        
        if char.isNumber {
            temp += String(char)
        } else if temp.count >= 1 {
            if let num = Int(temp) {
                numList.append(num)
                temp = ""
            }
        }
    }
    
    if temp.count != 0 {
        if let num = Int(temp) {
            numList.append(num)
        }
    }
    
    return numList.reduce(0, +)
}
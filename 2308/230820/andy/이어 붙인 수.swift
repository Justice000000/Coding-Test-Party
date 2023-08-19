// 이어 붙인 수 https://school.programmers.co.kr/learn/courses/30/lessons/181928

import Foundation

func solution(_ numList: [Int]) -> Int {

    var even = ""
    var odd = ""
    for num in numList {
		if num % 2 == 0 { even += String(num) }
		else { odd += String(num) }
    }

    return Int(even)! + Int(odd)!
}

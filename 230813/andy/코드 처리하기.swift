// [프로그래머스] 코드 처리하기 https://school.programmers.co.kr/learn/courses/30/lessons/181932

import Foundation

func solution(_ code: String) -> String {

    let code = code.map { String($0) }
    var mode = 0
    var result = ""

    for i in code.indices {
        if mode == 0 {
            if code[i] == "1" { mode = 1 }
            else if i % 2 == 0 { result += code[i] }
        } else {
            if code[i] == "1" { mode = 0 }
            else if i % 2 == 1 { result += code[i] }
        }
    }

    if result.isEmpty { return "EMPTY" }

    return result
}

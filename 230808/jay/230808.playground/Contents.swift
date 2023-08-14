import Foundation

// 코드처라하기 못품
func solution(_ code:String) -> String {
 
    var codeArr = Array(code)
    var mode = 0
    var result = ""

    for i in 0..<code.count {
        if mode == 0 {
            if codeArr[i] == "1" {
                mode = 1
            } else {
                if i % 2 == 0 {
                    result += String(codeArr[i])
                }
            }
        } else {
            if codeArr[i] == "1" {
                mode = 0
            } else {
                if i % 2 != 0 {
                    result += String(codeArr[i])
                }
            }
        }
    }

    if result == "" {
        return "EMPTY"
    } else {
        return result
    }
}

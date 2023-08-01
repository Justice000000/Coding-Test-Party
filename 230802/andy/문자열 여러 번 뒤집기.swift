// 프로그래머스
// 문자열 여러 번 뒤집기
// https://school.programmers.co.kr/learn/courses/30/lessons/181913
 
import Foundation

func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    
    var inputString = my_string.map { String($0) }
    
    for query in queries {
        var i = query[0]
        var j = query[1]
        
        while i < j {    
            inputString.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
    
    return inputString.joined()
}

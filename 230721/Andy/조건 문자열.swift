import Foundation

// 프로그래머스
// https://school.programmers.co.kr/learn/courses/30/lessons/181934
func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
    
    let oper = ineq + eq
    var bool = false
    var result = -1
    
    switch oper {
    case ">=":
        bool = n >= m
    case "<=":
        bool = n <= m
    case ">!":
        bool = n > m
    case "<!":
        bool = n < m
    default:
        break
    }
    
    if bool == true { result = 1 }
    else { result = 0 }
    
    return result
}
// https://school.programmers.co.kr/learn/courses/30/lessons/120907
import Foundation

func solution(_ quizzes: [String]) -> [String] {
    
    var result = [String]()
    
    for quiz in quizzes {
        let expression = quiz.split(separator: " ").map { String($0) }
        var resultBoolean = false
    
        let rightNumber = convertNumberToInt(expression[0])
        let leftNumber = convertNumberToInt(expression[2])
        let resultNumber = convertNumberToInt(expression[4])
        
        let arithmeticOperator = expression[1]
        
        switch arithmeticOperator {
        case "+":
            resultBoolean = (rightNumber + leftNumber == resultNumber)
        case "-":
            resultBoolean = (rightNumber - leftNumber == resultNumber)
        default:
            break
        }
        
        if resultBoolean == true {
            result.append("O")
        } else {
            result.append("X")
        }
    }
    
    return result
}

func convertNumberToInt(_ num: String) -> Int {
    var num = num
    var result = 0
    var flag = 0
    
    if num[num.startIndex] == "-" {
        num.remove(at: num.startIndex)
        flag = 1
    }
    
    result = Int(num) ?? 0
    
    if flag == 1 { result *= -1 }
    
    return result
}
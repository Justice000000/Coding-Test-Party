func solution(_ my_string:String) -> Int {
    let expression = my_string.split(separator: " ").map { String($0) }
    var result = Int(expression.first!)!
    for i in (0...expression.count - 1) {
      
        if expression[i] == "+" {
            result += Int(expression[i+1])!
        } else if expression[i] == "-" {
            result -= Int(expression[i+1])!
        } else {
            continue
        }
    }
    
    return result
}


// ⭐️⭐️⭐️⭐️⭐️⭐️

func solution(_ my_string:String) -> Int {
    my_string
        .replacingOccurrences(of: " - ", with: " + -")
        .components(separatedBy: " + ")
        .reduce(0,  { $0 + Int($1)! })
}
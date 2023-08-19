func solution(_ quiz:[String]) -> [String] {
    var result = [String]()

    for q in quiz {
        var s = q.split(separator: " ").map{ String($0) }

        if s[1] == "+" {
            result.append( Int(s[0])! + Int(s[2])! == Int(s[4])! ? "O" : "X" )
        } else {
            result.append( Int(s[0])! - Int(s[2])! == Int(s[4])! ? "O" : "X" )
        }
    }

    return result
}
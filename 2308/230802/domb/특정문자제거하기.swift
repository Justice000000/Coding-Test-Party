

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter { String($0) != letter }
}

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}
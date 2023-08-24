func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map { String($0) == alp ? String($0).uppercased() : String($0) }.joined()
}

// 다른사람의 풀이
func solution(_ myString: String, _ alp: String) -> String {
    return myString.replacingOccurrences(of: alp, with: alp.uppercased())
}
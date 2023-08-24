func solution(_ my_string:String, _ index_list:[Int]) -> String {
    
    let dic = my_string.enumerated().reduce(into: [:] ) { $0[$1.offset] = $1.element }
    
    return index_list.map { String(dic[$0]!) }.joined()
}

// 다른사람 풀이 -> 문자열의 인덱스를 이런식으로 접근하면되는구나.
func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let my_string = my_string.map { String($0) }
    return index_list.reduce("") { $0 + my_string[$1] }
}

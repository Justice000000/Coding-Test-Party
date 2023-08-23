func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return num_list[n-1...num_list.count-1].map { Int($0) }
}

// 다른사람의 풀이
func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[(n-1)...])
}

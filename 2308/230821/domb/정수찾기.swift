func solution(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.contains { $0 == n } ? 1 : 0
}
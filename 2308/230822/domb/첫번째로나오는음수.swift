func solution(_ num_list:[Int]) -> Int {
    return num_list.enumerated().filter { $0.element < 0 }.first?.offset ?? -1
}

func solution(_ num_list:[Int]) -> Int {
    guard let index = num_list.firstIndex(where: { $0 < 0 }) else { return -1 }
    return index
}

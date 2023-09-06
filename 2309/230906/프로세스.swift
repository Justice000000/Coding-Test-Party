func solution(_ priorities:[Int], _ location:Int) -> Int {
    var index = location
    var queue = priorities
    var count = 0

    while !queue.isEmpty {

        let process = queue.removeFirst()
        index -= 1

        if queue.allSatisfy({ $0 <= process }) {
            count += 1
            if index == -1 {
                break
            }
        } else {
            queue.append(process)
            if index < 0 {
                index = queue.count - 1
            }
        }  
    }
    return count
}
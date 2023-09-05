func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {

    var progress = progresses
    var speed = speeds
    var result = [Int]()
    var count = 0 

    while !progress.isEmpty {
        if progress[0] >= 100 {
            progress.removeFirst()
            speed.removeFirst()
            count += 1
        } else {
            if count != 0 {
                result.append(count)
                count = 0
            }

            for i in 0..<progress.count {
                progress[i] += speed[i]
            }
        }
    }

    result.append(count)

    return result
}
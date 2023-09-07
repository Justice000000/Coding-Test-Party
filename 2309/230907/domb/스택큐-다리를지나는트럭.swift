func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {

    var waitingTrucks = truck_weights
    var bridgeWeight = 0
    var queue: [Int] = Array(repeating: 0, count: bridge_length)
    var time = 0

    while !waitingTrucks.isEmpty || bridgeWeight != 0 {
        time += 1
        let truck = queue.removeFirst()
        bridgeWeight -= truck

        if let waitingFirstTruck = waitingTrucks.first {
            if bridgeWeight + waitingFirstTruck <= weight {
                let waitingTruck = waitingTrucks.removeFirst()
                queue.append(waitingTruck)
                bridgeWeight += waitingTruck
            } else {
                queue.append(0)
            }
        } else {
            queue.append(0)
        }
    }

    return time
}
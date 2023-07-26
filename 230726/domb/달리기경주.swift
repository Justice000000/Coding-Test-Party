func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var playerList = players
    var calls = callings
    var raceTable = [String: Int]()
    
    for number in 0..<playerList.count {
        raceTable[playerList[number]] = number
    }
    
    for index in 0..<calls.count {
        var calledPlayer = calls[index]
        let calledPlayerRank = raceTable[calledPlayer]!
        let frontOfCalledPlayer = playerList[calledPlayerRank - 1]
        
        raceTable[frontOfCalledPlayer] = calledPlayerRank
        raceTable[calledPlayer] = calledPlayerRank - 1
        
        
        playerList[calledPlayerRank - 1] = calledPlayer
        playerList[calledPlayerRank] = frontOfCalledPlayer
    }
    
    return playerList
}
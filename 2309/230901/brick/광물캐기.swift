import Foundation

func solution(_ picks:[Int], _ minerals:[String]) -> Int {
    let minerals: [Int] = minerals.map { 
        switch $0 {
            case "diamond":     return 0
            case "iron":        return 1
            case "stone":       return 2
            default:            return -1
        }
    }
    
    let fatigueTable = [
        [1, 1, 1],
        [5, 1, 1],
        [25, 5, 1]
    ]
    var picks = picks
    var picked: [Int] = []
    let picksCount = min(Int(ceil(Double(minerals.count) / 5.0)), picks.reduce(0, +))
    var answer = Int.max
    
    func dfs(_ picked: [Int]) { 
        
        if picked.count == picksCount { 
            answer = min(answer, countFatigue(picked))
        }
        
        for (i, n) in picks.enumerated() { 
            if n > 0 { 
                picks[i] -= 1
                dfs(picked + [i])
                picks[i] += 1
            }
        }
    }
    
    func countFatigue(_ picked: [Int]) -> Int { 
        var fatigue = 0
        let maxCount = min(minerals.count, picked.count * 5) // 8, 10
        
        for i in 0..<maxCount { 
            let index = i / 5
            let pick = picked[index]
            let mineral = minerals[i]
            fatigue += fatigueTable[pick][mineral]
        }
        
        return fatigue
    }
    
    dfs([])
    
    return answer
}

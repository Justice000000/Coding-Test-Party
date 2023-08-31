import Foundation

func solution(_ plans:[[String]]) -> [String] {
    
    let plans: [(String, Int, Int)] = plans
        .map {
            let start = $0[1]
                .split(separator: ":")
                .map { Int($0)! }
            let playtime = Int($0[2])!
            return ($0[0], start[0]*60 + start[1], playtime)
        }
        .sorted { $0.1 < $1.1 }
    
    var planStack: [(String, Int, Int)] = []
    var answer: [String] = []
    
    for plan in plans { 
         
        if planStack.isEmpty { 
            planStack.append(plan)
            continue
        }
        
        var leftTime = plan.1 - planStack.last!.1
            
        while let last = planStack.last, last.2 <= leftTime { 
            answer.append(planStack.removeLast().0)
            leftTime -= last.2
        }
        
        if !planStack.isEmpty && leftTime > 0 { 
            let lastIndex = planStack.count - 1
            planStack[lastIndex].2 = planStack[lastIndex].2 - leftTime
        }
        
        planStack.append(plan)
    }

    answer += planStack
        .reversed()
        .map { $0.0 }
    
    return answer
}
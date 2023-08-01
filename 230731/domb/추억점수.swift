
// 추억점수 (Level1)
import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {

    var dictionary = [String: Int]()

    for i in 0...name.count - 1 {
        dictionary[name[i]] = yearning[i]
    }

    var scoreList: [Int] = []

    for i in 0...photo.count - 1 {
        let score = photo[i].map { dictionary[$0] ?? 0 }.reduce(0) { $0 + $1 }
        scoreList.append(score)
    }

    return scoreList
}
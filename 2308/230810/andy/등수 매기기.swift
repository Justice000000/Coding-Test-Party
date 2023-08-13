// 프로그래머스
// 등수 매기기
// https://school.programmers.co.kr/learn/courses/30/lessons/120882

import Foundation

func solution(_ scores: [[Int]]) -> [Int] {

    var sumList = [Int]()
    var rankingList = Array(repeating: 1, count: scores.count)

    for item in scores {
        sumList.append(item.reduce(0, +))
    }

    for i in sumList.indices {
        for j in sumList.indices {
            if sumList[i] < sumList[j] {
                rankingList[i] += 1
            }
        }
    }

    return rankingList
}

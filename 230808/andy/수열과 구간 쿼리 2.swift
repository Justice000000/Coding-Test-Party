// 프로그래머스
// 수열과 구간 쿼리 2
// https://school.programmers.co.kr/learn/courses/30/lessons/181923

import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {

    var result = [Int]()

    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        var temp = [Int]()

        for i in arr.indices {
            guard i >= s && i <= e else { continue }

            if arr[i] > k { temp.append(arr[i]) }
        }
        result.append(temp.min() ?? -1)
    }

    return result
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120913

import Foundation

func solution(_ my_str: String, _ n: Int) -> [String] {

    let count = my_str.count
    let range = count / n
    let lastOffset = count % n

    var result = [String]()
    var offset = 0

    for _ in 1...range {
        let start = my_str.index(my_str.startIndex, offsetBy: offset)
        let last = my_str.index(my_str.startIndex, offsetBy: offset + n - 1)

        result.append(String(my_str[start...last]))
        offset += n
    }

    if lastOffset != 0 {
        let start = my_str.index(my_str.startIndex, offsetBy: offset)
        let last = my_str.index(my_str.startIndex, offsetBy: offset + lastOffset - 1)

        result.append(String(my_str[start...last]))
    }

    return result
}

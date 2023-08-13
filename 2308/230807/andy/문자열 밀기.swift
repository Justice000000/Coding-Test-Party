// 프로그래머스
// 문자열 밀기
// https://school.programmers.co.kr/learn/courses/30/lessons/120921

import Foundation

func solution(_ A: String, _ B: String) -> Int {

    if A == B { return 0 }
    var count = 0
    var temp = A

    for _ in 1...A.count-1 {
        let rotated = rotateWords(word: temp)
        count += 1

        if rotated == B { return count }
        else { temp = rotated }
    }

    return -1
}

func rotateWords(word: String) -> String {
    let lastWord = String(word[word.index(word.startIndex, offsetBy: word.count - 1)])
    let restWords = String(word[word.startIndex...word.index(word.startIndex, offsetBy: word.count - 2)])
    return lastWord + restWords
}

//
//  숫자 문자열과 영단어.swift
//  CodingTestPractice
//
//  https://www.notion.so/yescoach/5d2d6c63a81e4c66b23631de53e0a08a
//
//  Created by 박태현 on 2023/08/25.
//

import Foundation

func solution(_ s:String) -> Int {
    let table = [
        "zero",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine"
    ]
    var str = s
    for i in 0...9 {
        str = str.replacingOccurrences(
                        of: table[i],
                        with: String(i)
                )
    }
    return Int(str)!
}

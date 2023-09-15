//
//  괄호 회전하기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/16.
//

import Foundation

func solution(_ s:String) -> Int {
    var count = 0

    for offset in 0..<s.count {
        let startIndex = s.index(s.startIndex, offsetBy: offset)
        let str = s[startIndex..<s.endIndex] + s[s.startIndex..<startIndex]
        if isCorrectString(String(str)) { count += 1 }
    }

    return count
}

func isCorrectString(_ s: String) -> Bool {
    var stack: [Character] = []

    for character in s {
        guard let last = stack.last else {
            stack.append(character)
            continue
        }
        switch last {
            case "[":
                if character == "]" { stack.removeLast() }
                else { stack.append(character) }
            case "(":
                if character == ")" { stack.removeLast() }
                else { stack.append(character) }
            case "{":
                if character == "}" { stack.removeLast() }
                else { stack.append(character) }
            default:
            stack.append(character)
        }
    }

    return stack.isEmpty
}

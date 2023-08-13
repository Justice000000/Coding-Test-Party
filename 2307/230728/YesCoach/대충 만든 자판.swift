//
//  대충 만든 자판.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/160586#
//
//  Created by 박태현 on 2023/07/28.
//

import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    let keyboard = keymap.map{Array($0)}
    let target = targets.map{Array($0)}
    var result: [Int] = []

    target.forEach { item in
        var tempResult: [Int] = []
        for character in item {
            var temp: [Int] = keyboard
                      .map{$0.firstIndex(of: character)}
                      .compactMap{$0}
            if temp.isEmpty {
                tempResult = [-1]
                break
            }
            tempResult.append(temp.sorted(by: <)[0] + 1)
        }
        result.append(tempResult.reduce(0){$0 + $1})
    }

    return result
}

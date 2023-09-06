//
//  문자열 나누기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/140108
//
//  Created by 박태현 on 2023/09/07.
//

import Foundation

func solution(_ s:String) -> Int {

    let arr = s.map {String($0)}
    var target = arr.first!

    var sameCount = 0
    var diffCount = 0

    var answer = 0

    for i in 0..<arr.count {
        if arr[i] == target {
            sameCount += 1
        } else {
            diffCount += 1
        }

        if i != arr.count-1 {
            if sameCount == diffCount {
                sameCount = 0
                diffCount = 0
                answer += 1
                target = arr[i+1]
            }
        } else {
            answer += 1
        }
    }

    return answer
}

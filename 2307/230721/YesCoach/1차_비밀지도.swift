//
//  1차_비밀지도.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/07/21.
//
//  프로그래머스 레벨1 2018 KAKAO BLIND RECRUITMENT
//  https://school.programmers.co.kr/learn/courses/30/lessons/17681

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []

    for i in 0..<n {
        var str = String(arr1[i] | arr2[i], radix: 2)
        while str.count < n {
            str = "0" + str
        }
        answer.append(str)
    }

    return answer.map {$0.replacingOccurrences(of: "1", with: "#")}
    .map {$0.replacingOccurrences(of: "0", with: " ")}
}

let result1 = solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
print(result1) // ["#####","# # #", "### #", "# ##", "#####"]

let result2 = solution(6, [46, 33, 33, 22, 31, 50], [27, 56, 19, 14, 14, 10])
print(result2) // ["######", "### #", "## ##", " #### ", " #####", "### # "]

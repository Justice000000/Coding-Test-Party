//
//  달리기_경주.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/07/21.
//
//  프로그래머스 레벨1 연습문제
//  https://school.programmers.co.kr/learn/courses/30/lessons/178871

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {

    var playerRanking: [String: Int] = [:]
    var playerArray = players

    players.enumerated().forEach { (index, item) in
        playerRanking[item] = index
    }

    callings.forEach {
        let index = playerRanking[$0]!
        let player = playerArray[index-1]

        playerRanking[$0]! -= 1
        playerRanking[player]! += 1
        playerArray.swapAt(index, index-1)   // swapAt: O(1)
    }

    return playerArray
}

let result = solution(["mumu", "soe", "poe", "kai", "mine"], ["kai", "kai", "mine", "mine"])
print(result) // ["mumu", "kai", "mine", "soe", "poe"]

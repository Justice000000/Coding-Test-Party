//
//  달리기 경주.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/178871
//
//  Created by 박태현 on 2023/08/23.
//

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
        playerArray.swapAt(index, index-1)
    }

    return playerArray
}

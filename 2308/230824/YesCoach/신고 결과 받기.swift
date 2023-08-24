//
//  신고 결과 받기.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/92334
//
//  Created by 박태현 on 2023/08/24.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {

    // 유저 닉네임과 인덱스
    var idList: [String: Int] = [:]
    // 신고한 명단
    var reportDictionary: [String: Set<String>] = [:]
    // 신고 당한 명단
    var dictionary: [String: Int] = [:]
    // 결과
    var result: [Int] = Array(repeating: 0, count: id_list.count)

    let reportArr = report.map{$0.components(separatedBy: " ")}

    for (index, user) in id_list.enumerated() {
        idList[user] = index
        reportDictionary[user] = []
        dictionary[user] = 0
    }

    for item in reportArr {
        if !reportDictionary[item[0]]!.contains(item[1]) {
            reportDictionary[item[0]]!.insert(item[1])
            dictionary[item[1]]! += 1
        }
    }

    let dic = dictionary.filter { $0.value >= k }

    dic.forEach { item in
        reportDictionary
            .filter { $0.value.contains(item.key) }
            .forEach { result[idList[$0.key]!] += 1 }
    }

    return result
}

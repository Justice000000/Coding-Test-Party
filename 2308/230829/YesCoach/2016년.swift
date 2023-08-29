//
//  2016년.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/08/29.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let date = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    let month = [31,29,31,30,31,30,31,31,30,31,30,31]

    var dateSum = 0
    for i in 0..<a-1 {
        dateSum += month[i]
    }
    dateSum += b-1
    dateSum = dateSum%7
    return date[dateSum]
}

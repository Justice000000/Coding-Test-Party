//
//  바탕화면 정리.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/161990
//  Created by 박태현 on 2023/08/01.
//

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    let wallpaperArr = wallpaper.map{Array($0)}

    var xResults: [Int] = []
    var yResults: [Int] = []

    for y in 0..<wallpaperArr.count {
        for x in 0..<wallpaperArr[y].count {
            if wallpaperArr[y][x] == "#" {
                xResults.append(x)
                yResults.append(y)
            }
        }
    }

    return [yResults.min()!, xResults.min()!, yResults.max()! + 1, xResults.max()! + 1]
}

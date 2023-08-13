//
//  main.swift
//  배열 원소의 길이
//
//  Created by 백래훈 on 2023/07/31.
//

import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map { $0.count }
}

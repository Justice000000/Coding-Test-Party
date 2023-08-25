//
//  main.swift
//  문자열안에 문자열
//
//  Created by 백래훈 on 2023/08/26.
//

import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    return str1.contains(str2) ? 1 : 2
}

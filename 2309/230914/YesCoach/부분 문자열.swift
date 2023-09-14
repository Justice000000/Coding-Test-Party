//
//  부분 문자열.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/14.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str2.contains(str1) ? 1: 0
}

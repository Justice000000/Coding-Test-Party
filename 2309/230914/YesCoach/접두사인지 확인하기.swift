//
//  접두사인지 확인하기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/14.
//

import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    let lhd = my_string.map { String($0) }.prefix(is_prefix.count).joined()
    let rhd = is_prefix

    print(lhd)
    print(rhd)

    return lhd == rhd ? 1: 0
}

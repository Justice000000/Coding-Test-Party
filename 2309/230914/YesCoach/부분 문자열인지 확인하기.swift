//
//  부분 문자열인지 확인하기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/14.
//

import Foundation

func solution(_ my_string:String, _ target:String) -> Int {
    return my_string.replacingOccurrences(of: target, with: "").count == my_string.count ? 0 : 1
}

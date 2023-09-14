//
//  문자열 바꿔서 찾기.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/09/14.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {

    let _myString = myString.map { $0 == "A" ? "B": "A" }.joined()

    return _myString.contains(pat) ? 1: 0
}

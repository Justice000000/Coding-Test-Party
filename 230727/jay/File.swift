//
//  File.swift
//  week2-table
//
//  Created by Jae Oh on 2023/07/27.
//

import Foundation


//문자열 곱하기 repeating이 핵심
func solution(_ my_string:String, _ k:Int) -> String {
    return String(repeating: my_string, count: k)
}

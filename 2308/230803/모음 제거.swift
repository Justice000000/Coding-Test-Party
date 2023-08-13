//
//  main.swift
//  모음 제거
//
//  Created by 백래훈 on 2023/08/03.
//

import Foundation

func solution(_ my_string: String) -> String {
    return my_string.filter { !["a", "e", "i", "o", "u"].contains($0) }
}

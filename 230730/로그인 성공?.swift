// 프로그래머스
// 로그인 성공?
// https://school.programmers.co.kr/learn/courses/30/lessons/120883

import Foundation

func solution(_ id_pw: [String], _ db: [[String]]) -> String {
    
    let inputId = id_pw[0]
    let inputPw = id_pw[1]
    var result = ""
    
    for item in db {
        let dbId = item[0]
        let dbPw = item[1]
        
        if dbId == inputId && dbPw == inputPw {
            return "login"
        } else if dbId == inputId && dbPw != inputPw {
            return "wrong pw"
        }
    }
    
    return "fail"
}
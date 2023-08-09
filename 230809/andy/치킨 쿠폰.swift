// 프로그래머스
// 치킨 쿠폰
// https://school.programmers.co.kr/learn/courses/30/lessons/120884

import Foundation

func solution(_ chicken: Int) -> Int {
    var coupon = chicken
    var bonus = 0

    while coupon >= 10 {
        let temp = coupon / 10
        bonus += temp
        coupon %= 10
        coupon += temp
    }

    return bonus
}

// # [level 2] 카펫 - 42842 

// [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/42842) 

// ### 성능 요약

// 메모리: 16.3 MB, 시간: 0.02 ms

// ### 구분

// 코딩테스트 연습 > 완전탐색

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var answer = [Int]()

    for i in 1..<yellow + 1 {
        guard yellow % i == 0 else { continue } 

        let x = i
        let y = yellow / i

        if (x + 2) * (y + 2) - yellow == brown {
            answer = [y + 2, x + 2]
            break
        } else {
            continue
        }
    }

    return answer
}

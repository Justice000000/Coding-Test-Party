// [문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/42578) 

//### 성능 요약

//메모리: 16.3 MB, 시간: 0.12 ms

//### 구분

//코딩테스트 연습 > 해시

func solution(_ clothes:[[String]]) -> Int {
    var result = 1
    var hashTable = [String: [String]]() 

    for cloth in clothes {
        if hashTable[cloth[1]] == nil {
            hashTable[cloth[1]] = [cloth[0]]
        } else {
            hashTable[cloth[1]]?.append(cloth[0])
        }
    }

    hashTable.forEach { result *= $0.value.count + 1 }

    return result - 1
}
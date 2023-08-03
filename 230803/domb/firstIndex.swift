

func solution(_ emergency:[Int]) -> [Int] {
    let sorted = emergency.sorted(by: >)

    return emergency.map { i in sorted.firstIndex { $0 == i }! + 1 }
}

.sorted(by: >)

.firstIndex(where: { ($0) throws -> Bool } /* optional */ )

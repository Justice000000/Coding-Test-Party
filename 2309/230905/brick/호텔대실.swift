import Foundation

typealias Point = (x: Int, y: Int)

func solution(_ maps:[String]) -> Int {
    let maps: [[Character]] = maps.map { Array($0) }
    var visited = Array(
        repeating: Array(repeating: -1, count: maps[0].count),
        count: maps.count
    )
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    var s = Point(-1, -1)
    var e = Point(-1, -1)
    var l = Point(-1, -1)
    
    for i in 0..<maps.count { 
        for j in 0..<maps[0].count { 
            if maps[i][j] == "S" { 
                s = (i, j) 
                continue
            }
            if maps[i][j] == "E" { 
                e = (i, j) 
                continue
            }
            if maps[i][j] == "L" { 
                l = (i, j) 
                continue
            }
        }
    }
        
    func bfs(_ start: Point, _ end: Point) -> Int { 
        visited[start.x][start.y] = 0
        var queue = [start]
        
        while !queue.isEmpty { 
            let current = queue.removeFirst()
            
            for i in dx.indices { 
                let nx = current.x + dx[i]
                let ny = current.y + dy[i]
                
                // 범위 안에 포함 && 벽 아님 && 방문 안함
                guard 0..<maps.count ~= nx &&
                      0..<maps[0].count ~= ny &&
                      maps[nx][ny] != "X" &&
                      visited[nx][ny] == -1
                else { continue }
                
                if (nx, ny) == end { 
                    return visited[current.x][current.y] + 1
                }
                
                visited[nx][ny] = visited[current.x][current.y] + 1
                queue.append((nx, ny))
            }
        }
        return -1
    }
    
    var time1 = bfs(s, l)
    visited = Array(
        repeating: Array(repeating: -1, count: maps[0].count),
        count: maps.count
    )
    var time2 = bfs(l, e)
    
    return time1 == -1 || time2 == -1 ? -1 : time1 + time2
}
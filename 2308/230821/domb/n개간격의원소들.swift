func solution(_ num_list:[Int], _ n:Int) -> [Int] {
   return num_list.enumerated().filter { offset, elelment in offset % n == 0 }.map { Int($1) }
}

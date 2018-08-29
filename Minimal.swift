
func rotateArray(arr: inout [Int], d:Int) -> [Int]{
    if d == 0{
        return arr
    }
    arr.append(arr.removeFirst())
    return rotateArray(arr: &arr, d: d - 1)
}

var arr = [4,5,6,7,83,3,22]
print(rotateArray(arr: &arr, d: 0))

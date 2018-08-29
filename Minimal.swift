

func rotateArrayLeft(arr: inout [Int], d:Int) -> [Int]{
    if d == 0{
        return arr
    }
    arr.append(arr.removeFirst())
    return rotateArrayLeft(arr: &arr, d: d - 1)
}

func rotateArrayRight(arr: inout [Int], d:Int) -> [Int]{
    if d == 0{
        return arr
    }
    arr.insert(arr.removeLast(), at: 0)
    return rotateArrayRight(arr: &arr, d: d - 1)
}

var arr = [4,5,6,7,83,3,22]
print("Original Array : \(arr)")
print("Left rotated Array :\(rotateArrayLeft(arr: &arr, d: 2))")

var arr1 = [4,5,6,7,83,3,22]
print("Original Array : \(arr1)")
print("Right rotated Array :\(rotateArrayRight(arr: &arr1, d: 2))")

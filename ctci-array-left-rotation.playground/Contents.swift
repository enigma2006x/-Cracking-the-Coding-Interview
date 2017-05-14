import Foundation;

/*
 
 https://www.hackerrank.com/challenges/ctci-array-left-rotation
 
 The first line contains two space-separated integers denoting
 the respective values of  (the number of integers) and
 the number of left rotations you must perform).
 The second line contains  space-separated integers
 describing the respective elements of the array's initial state.

 Constraints:
    1 <= n <= 10^5
    1 <= d <= n
    1 <= a <= 10^6
 */
  
func readLineWithDefault(value : String) -> Array<Int> {

    var v = ""
    if let r = readLine(strippingNewline: true) {
        v = r
    }else{
        v = value
    }

    return v.components(separatedBy: " ").flatMap{Int(String($0))}
}

let case0_Line1 = "5 4"
let case0_Line2 = "1 2 3 4 5"

let firstArray = readLineWithDefault(value: case0_Line1)
let n = firstArray[0] //number of elements in array
let k = firstArray[1] //number of elements rotate left
var a : [Int] = readLineWithDefault(value: case0_Line2)
var r : [Int] = Array(repeating: 0, count: n)


//First way
/*
for i in 0..<n{
    
    let index = (i + (n - k)) % n
    let v = a[i]
    r[index] = v
    
}

let result = r.flatMap { String($0) }.joined(separator: " ")

print(result)
*/


//Second way

for i in 0..<k{
 
    let v = a.first!
    a.removeFirst()
    a.append(v)
    
}

let result = a.flatMap { String($0) }.joined(separator: " ")
 
print(result)



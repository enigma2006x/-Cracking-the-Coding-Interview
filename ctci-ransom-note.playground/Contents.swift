//: Playground - noun: a place where people can play

import UIKit

/*

 - Problem "Ransom note (Nota de rescate)"
 
 Case-sensitive and he must use whole words available in the magazine,
 meaning he cannot use substrings or concatenation to create the words he needs
 
 - Input format
 
 The first line contains two space-separated integers describing the respective values of 
    m (the number of words in the magazine) and
    n (the number of words in the ransom note).
 
 The second line contains m space-separated strings denoting the words present in the magazine.
 The third line contains n space-separated strings denoting the words present in the ransom note.
 
 - Constraints
 
 () 1 <=  m, n <= 30000
 () 1 <= length of any word <= 5
 () Each word consists of English alphabetic letters (i.e., a to z and A to Z).
 () The words in the note and magazine are case-sensitive.

 - Output Format
 
 Print Yes if he can use the magazine to create an untraceable replica of his ransom note; 
 otherwise, print No.

 - Sample Input
 
 6 4
 give me one grand today night
 give one grand today
 
 - Sample Output
 
 Yes
 
 */

func readLineWithDefaultReturnInt(value : String) -> Array<Int> {
    
    var v = ""
    if let r = readLine(strippingNewline: true) {
        v = r
    }else{
        v = value
    }
    
    return v.components(separatedBy: " ").flatMap{Int(String($0))}
}

func readLineWithDefaultReturnString(value : String) -> Array<String> {
    
    var v = ""
    if let r = readLine(strippingNewline: true) {
        v = r
    }else{
        v = value
    }
    
    return v.components(separatedBy: " ").flatMap{String($0)}
}

let l1 = readLineWithDefaultReturnInt(value:"6 4")
let l2 = readLineWithDefaultReturnString(value:"give me one grand today night")
let l3 = readLineWithDefaultReturnString(value:"give one grand today")

//let m = l1[0] //words in magazine
//let n = l1[1] //word in ransom note


var hash : [String:Int] = [:]
var isPrintable = true

//Create hash
for w in l2 {
    
    var v = hash[w] != nil ? Int(hash[w]!) + 1 : 1
    hash[w] = v
    
}

//Check if exist all the words in hash
for s in l3 {
    
    var v = hash[s]
    if let c = v{
    
        v = c - 1
        hash[s] = v
        
        if v! < 0 {
            isPrintable = false
            break
        }
        
    }else{
    
        isPrintable = false
        break
    }
    
}

//print(hash)
print(isPrintable ? "Yes" : "No")





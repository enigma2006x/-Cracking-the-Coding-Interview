//: Playground - noun: a place where people can play

import UIKit

/*
(, ), {, }, [, or ].
 
 Given  strings of brackets, determine whether each sequence of brackets is balanced.
 If a string is balanced, print YES on a new line; otherwise, print NO on a new line.
 
 */


struct Stack<Element> {
    
    var items = [Element]()
    
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    mutating func first() -> Element? {
        return items.first
    }
    
    mutating func removefirst() {
        if !isEmpty(){
            items.removeFirst()
        }
    }
    
    mutating func isEmpty() -> Bool {
        return items.isEmpty
    }
    
}

class Node : NSObject{
    
    var data : Character!
    var used = false
    
    override var description: String{
        return "Node \(data) \(used)"
    }
}

func isBalanced(n : String) -> Bool{

    var stack : Stack<Node> = Stack()
    //var stackCopy : Stack<Character> = Stack()
    
    for c in n.characters{
        
        let t = Node()
        t.data = c
        stack.push(t)
       // stackCopy.push(c)
    }
    
    
    
    if stack.items.count % 2 != 0{
        return false
    }
    
   // print(stack)
    var temp = stack.pop()
   // var i = 0
    let stackReverse = stack.items.reversed()
    while !stack.isEmpty() {

        var founded = true
        
      //  {[(])}
        for f in stackReverse {

            print("\(f) \(temp)")
            if f.data == "{" && temp.data == "}" && !f.used && !temp.used {
                
                temp.used = true
                f.used = true
                print("found {} \(f) \(temp)")
                
                break
           //     stack.items
            }else if f.data == "[" && temp.data == "]" && !f.used  && !temp.used {
                temp.used = true
                f.used = true
                print("found [] \(f) \(temp)")
                break
             //   stack.removefirst()
            }else if f.data == "(" && temp.data == ")" && !f.used  && !temp.used {
                temp.used = true
                f.used = true
                print("found () \(f) \(temp)")
                break
              //  stack.removefirst()
            }else if temp.data == ")" || temp.data == "}" || temp.data == "]"{
                
                if stackReverse.last == f{
                    
                //    print("NO found \(f) \(temp)")
                    founded = false
                }
            }
         //   i += 1
            
        }
        
        if !founded{
            return false
        }
        
//        if !stack.isEmpty(){
//            
//            
//            
//        }
        
        temp = stack.pop()
        
    }
    
    
    return true
}

let n = 3


//
//let n0 = "{}"
//print(isBalanced(n:n0) ? "YES" : "NO")
//let n1 = "}([[{)[]))]{){}["
//print(isBalanced(n:n1) ? "YES" : "NO")
//let n2 = "{]]{()}{])"
//print(isBalanced(n:n2) ? "YES" : "NO")
//let n3 = "(){}"
//print(isBalanced(n:n3) ? "YES" : "NO")
//let n4 = "{}{()}{{}}"
//print(isBalanced(n:n4) ? "YES" : "NO")

let n5 = "{[(])}"
print(isBalanced(n:n5) ? "YES" : "NO")

//

//
//print(isBalanced(n:n3) ? "YES" : "NO")
//print(isBalanced(n:n4) ? "YES" : "NO")

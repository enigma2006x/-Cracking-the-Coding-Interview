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
    
    mutating func removefirst() {
        if !isEmpty(){
            items.removeFirst()
        }
    }
    
    mutating func isEmpty() -> Bool {
        return items.isEmpty
    }
    
}

func isBalanced(n : String) -> Bool{

    var stack : Stack<Character> = Stack()
    
    //print(n)
    //print(stack)
    for c in n.characters{
        //print("\(c) \(stack)")
        if c == "("{
            
            stack.push(")")
            //print("push:\(stack)")
        }else if c == "["{
            stack.push("]")
            //print("push:\(stack)")
        }else if c == "{"{
            stack.push("}")
            //print("push:\(stack)")
        }else{
            
            //print("isEmpty:\(stack.isEmpty()) \(c) \(stack.topItem)")
            if (stack.isEmpty() || c != stack.topItem ){
                
              //  print("false")
                return false
            }
            
            //print("pop \(stack.pop())")
            stack.pop()
        }
        
    }
    
    return stack.isEmpty()
}

//
let n0 = "{}"
print(isBalanced(n:n0) ? "YES" : "NO")
let n1 = "}([[{)[]))]{){}["
print(isBalanced(n:n1) ? "YES" : "NO")
let n2 = "{]]{()}{])"
print(isBalanced(n:n2) ? "YES" : "NO")
let n3 = "(){}"
print(isBalanced(n:n3) ? "YES" : "NO")
let n4 = "{}{()}{{}}"
print(isBalanced(n:n4) ? "YES" : "NO")
let n5 = "{[(])}"
print(isBalanced(n:n5) ? "YES" : "NO")


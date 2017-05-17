import UIKit


/*
 
 A linked list is said to contain a cycle if any node is visited more than once while traversing the list.
 
 Complete the function provided in the editor below. It has one parameter: a pointer to a Node object
 named head that points to the head of a linked list. 
 Your function must return a boolean denoting whether or
 not there is a cycle in the list. If there is a cycle, return true; otherwise, return false.
 
 Note: If the list is empty, head will be null.
 

 */

class Node : NSObject {
    
    var data : Int?
    var next : Node?
    
    init(d : Int?, n : Node?) {
        
        data = d
        next = n
        
    }
    
}


func hasCycle(head: Node?) -> Bool{
    
    var temp = head
    var visited : [Node] = []
    while temp != nil {
        
        if !visited.contains{ $0 == temp! } {
            visited.append(temp!)
        }else{
            return true
        }
        
        temp = temp!.next
        
    }
    
    return false
    
}


//Case #0

let node2 = Node(d:2, n:nil)
let node1 = Node(d:1, n:node2)
let node0 = Node(d:0, n:node1)
print("Case #0")
print(hasCycle(head:node0) ? "has cycle" : "no has cycle")


print("")
//Case #1

node2.next = node0
print("Case #1")
print(hasCycle(head:node0) ? "has cycle" : "no has cycle")



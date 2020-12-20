import UIKit

struct Stack<Element> {
    var array: [Element] = []
    
    init(capacity: Int) {
        array.reserveCapacity(capacity)
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func delete(at index: Int) {
        array.remove(at: index)
    }
    
    mutating func pop() {
        array.removeLast()
    }
}


var example = Stack<Int>(capacity: 10)
example.push(2)
example.push(3)
example.push(9)
example.push(5)
example.pop()
print(example)

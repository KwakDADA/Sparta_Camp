//
//  main.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

func testQueueExample() {
    print("-- queue example --")
    var queue: Queue<Int> = .init()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.status()
    print(queue.dequeue() ?? "empty")
    queue.status()
    print(queue.dequeue() ?? "empty")
    print(queue.dequeue() ?? "empty")
}

func testStackExample() {
    print("-- stack example --")
    var stack: Stack<Int> = .init()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    print(stack.top() ?? "empty")
    stack.pop()
    stack.pop()
    print(stack.top() ?? "empty")
}

testQueueExample()
testStackExample()

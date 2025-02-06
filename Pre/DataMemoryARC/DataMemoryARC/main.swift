//
//  main.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

func testQueueExample() {
    var queue: Queue<Int> = .init()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.status()
    print(queue.dequeue() ?? "empty")
    queue.status()
    print(queue.dequeue() ?? "empty")
    print(queue.dequeue() ?? "empty")
}

testQueueExample()

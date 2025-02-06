//
//  Queue.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

import Foundation

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }
    
    func status() {
        print(elements)
    }
}

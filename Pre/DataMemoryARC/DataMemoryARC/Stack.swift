//
//  Stack.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

import Foundation

struct Stack<T> {
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.isEmpty ? nil : elements.removeLast()
    }
    
    func top() -> T? {
        return elements.last
    }
}

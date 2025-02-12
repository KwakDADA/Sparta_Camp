//
//  main.swift
//  AsynchronousGeneric
//
//  Created by 곽다은 on 2/11/25.
//

import Foundation

func testAsyncExample() {
    print("-- async example --")
    
    DispatchQueue.global().async {
        for i in 1...5 {
            print(i)
        }
        
        DispatchQueue.main.async {
            print("UI 업데이트 완료")
            CFRunLoopStop(CFRunLoopGetCurrent())
        }
    }

    CFRunLoopRun()
}

func testNetworkSimulationExample() {
    print("-- network simulation example --")
    
    func fetchData(completion: @escaping (String) -> ()) {
        DispatchQueue.global().async {
            for i in 1...3 {
                print("\(i)초..")
                sleep(1)
            }
            
            let data = "데이터 로드 완료"
            
            DispatchQueue.main.async {
                completion(data)
                CFRunLoopStop(CFRunLoopGetCurrent())
            }
        }
    }
    
    fetchData { result in
        print(result)
    }
    
    CFRunLoopRun()
}

func testGenericFunctionExample() {
    print("-- generic function example --")
    
    func swapValues<T>(_ a: inout T, _ b: inout T) {
        let temp = a
        a = b
        b = temp
    }
    
    var a = 10
    var b = 20
    swapValues(&a, &b)
    print(a, b)
}

func testGenericStackExample() {
    print("-- generic stack example --")
    
    struct Stack<T> {
        private var elements: [T] = []
        
        mutating func push(_ element: T) {
            elements.append(element)
        }
        
        mutating func pop() -> T? {
            return elements.isEmpty ? nil : elements.removeLast()
        }
    }
    
    var intStack = Stack<Int>()
    intStack.push(1)
    intStack.push(2)
    print(intStack.pop() ?? "the stack is empty")
}

testAsyncExample()
testNetworkSimulationExample()
testGenericFunctionExample()
testGenericStackExample()

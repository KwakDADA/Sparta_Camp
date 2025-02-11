//
//  main.swift
//  ClosureOOP
//
//  Created by 곽다은 on 2/6/25.
//


func testClosureExample() {
    print("-- closure example --")
    
    let nums = [1, 2, 3, 4, 5]
    let doubled = nums.map { $0 * 2 }
    
    print(doubled)
}

func testCaptureExample() {
    print("-- capture example --")
    
    var counter = 0
    let incrementCounter = {
        counter += 1
    }
    
    print(counter)
    incrementCounter()
    print(counter)
    incrementCounter()
    print(counter)
}

testClosureExample()
testCaptureExample()

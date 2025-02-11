//
//  main.swift
//  ClosureOOP
//
//  Created by 곽다은 on 2/6/25.
//


func testClosureExample() {
    print("-- closure example --")
    
    var nums = [1, 2, 3, 4, 5]
    var doubled = nums.map { $0 * 2 }
    
    print(doubled)
}

testClosureExample()

//
//  Person.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

class Person {
    var name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) deinit")
    }
}

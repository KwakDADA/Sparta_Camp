//
//  Person.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

struct Person: Greetable {
    var name: String
    
    func greet() -> String {
        return "Hello, \(name)!"
    }
}

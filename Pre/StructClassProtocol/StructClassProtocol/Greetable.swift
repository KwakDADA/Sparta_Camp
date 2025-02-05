//
//  Greetable.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

protocol Greetable {
    func greet() -> String
}

extension Greetable {
    func greet() -> String {
        return "Hello!"
    }
}

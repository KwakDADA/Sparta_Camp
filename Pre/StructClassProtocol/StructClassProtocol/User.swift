//
//  User.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

import Foundation

// MARK: - struct
struct UserStruct {
    var name: String
    var age: Int
    
    mutating func changeName(to newName: String) {
        name = newName
    }
    
    mutating func getOld() {
        age += 1
    }
}

// MARK: - class
class UserClass {
    var name: String
    var age: Int
    
    func changeName(to newName: String) {
        name = newName
    }
    
    func getOld() {
        age += 1
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

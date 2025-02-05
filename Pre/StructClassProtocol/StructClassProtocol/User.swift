//
//  User.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

import Foundation

// MARK: - struct
struct User {
    var name: String
    var age: Int
    
    mutating func changeName(to newName: String) {
        name = newName
    }
    
    mutating func getOld() {
        age += 1
    }
}

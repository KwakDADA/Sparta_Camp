//
//  Robot.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

import Foundation

class Robot: Greetable {
    let id = UUID()
    
    func greet() -> String {
        return "Hello, \(id)!"
    }
}

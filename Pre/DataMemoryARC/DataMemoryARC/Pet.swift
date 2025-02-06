//
//  Pet.swift
//  DataMemoryARC
//
//  Created by 곽다은 on 2/6/25.
//

class Pet {
    var owner: Person?
    
    init(owner: Person? = nil) {
        self.owner = owner
    }
    
    deinit {
        print("pet deinit")
    }
}

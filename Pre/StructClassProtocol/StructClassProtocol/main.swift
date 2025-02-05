//
//  main.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

func testStructExample() {
    print("-- struct example --")
    
    var user1 = UserStruct(name: "사용자1", age: 23)
    var user2 = user1

    user2.changeName(to: "사용자2")
    user1.getOld()

    func result(user: UserStruct, anotherUser: UserStruct) {
        if user.age != anotherUser.age {
            print("\(user.name)과 \(anotherUser.name)은 독립적")
        } else {
            print("\(user.name)과 \(anotherUser.name)은 값을 공유")
            print("user1: name - \(user.name), age - \(user.age)")
            print("user2: name - \(anotherUser.name), age - \(anotherUser.age)")
        }
    }

    result(user: user1, anotherUser: user2)
}

func testClassExample() {
    print("-- class example --")
    
    let user1 = UserClass(name: "사용자1", age: 23)
    let user2 = user1
    
    user2.changeName(to: "사용자2")
    user1.getOld()
    
    func result(user: UserClass, anotherUser: UserClass) {
        if user.age != anotherUser.age {
            print("\(user.name)과 \(anotherUser.name)은 독립적")
        } else {
            print("\(user.name)과 \(anotherUser.name)은 값을 공유")
            print("user1: name - \(user.name), age - \(user.age)")
            print("user2: name - \(anotherUser.name), age - \(anotherUser.age)")
        }
    }

    result(user: user1, anotherUser: user2)
}

testStructExample()
testClassExample()

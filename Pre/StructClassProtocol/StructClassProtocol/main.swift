//
//  main.swift
//  StructClassProtocol
//
//  Created by 곽다은 on 2/5/25.
//

func testStructExample() {
    var user1 = User(name: "사용자1", age: 23)
    var user2 = user1

    user2.changeName(to: "사용자2")
    user1.getOld()

    func result(user: User, anotherUser: User) {
        if user.age != anotherUser.age {
            print("\(user.name)과 \(anotherUser.name)은 독립적")
        } else {
            print("\(user.name)과 \(anotherUser.name)은 값을 공유")
        }
    }

    result(user: user1, anotherUser: user2)
}

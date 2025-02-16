//
//  main.swift
//  CombineFramework
//
//  Created by 곽다은 on 2/13/25.
//

import Foundation
import Combine

func testSimplePublisherSubscriberExample() {
    print("-- simple publisher and subscriber example --")
    
    let numbers = [10, 20, 30, 40, 50].publisher

    numbers
        .map { $0 * 2 }
        .sink { print($0) }
        .cancel()
}

func testJustPublisherExample() {
    print("-- just publisher example --")
    
    Just(100)
        .map { $0 + 50 }
        .sink { print($0) }
        .cancel()
}

func testURLSeesionWithCombineExample() {
    print("-- URLSession with combine example --")
    
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
    
    URLSession.shared.dataTaskPublisher(for: url)
        .map { $0.data }
        .decode(type: MyData.self, decoder: JSONDecoder())
        .sink(receiveCompletion: { completion in
            switch completion {
            case .finished:
                print("완료")
            case .failure(let error):
                print("실패 - error: \(error)")
            }
            CFRunLoopStop(CFRunLoopGetCurrent())
        }, receiveValue: { data in
            print(data.title)
        })
        .store(in: &subsSet)
}

func testTimerPublisherExample() {
    print("-- timer publisher example --")
    
    let dispatchQueue = DispatchQueue.global()
    
    let cancellable = Timer.publish(every: 1, on: .main, in: .default)
        .autoconnect()
        .sink { print($0) }
    
    dispatchQueue.asyncAfter(deadline: .now() + 5) {
        cancellable.cancel()
    }
    
}


testSimplePublisherSubscriberExample()
testJustPublisherExample()

var subsSet: Set<AnyCancellable> = .init()
testURLSeesionWithCombineExample()

testTimerPublisherExample()

CFRunLoopRun()

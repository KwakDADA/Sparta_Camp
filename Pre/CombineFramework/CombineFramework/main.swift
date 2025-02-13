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

testSimplePublisherSubscriberExample()

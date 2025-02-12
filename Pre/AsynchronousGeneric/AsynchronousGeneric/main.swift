//
//  main.swift
//  AsynchronousGeneric
//
//  Created by 곽다은 on 2/11/25.
//

import Foundation

func testAsyncExample() {
    print("-- async example --")
    DispatchQueue.global().async {
        for i in 1...5 {
            print(i)
        }
        
        DispatchQueue.main.async {
            print("UI 업데이트 완료")
            CFRunLoopStop(CFRunLoopGetCurrent())
        }
    }

    CFRunLoopRun()
}

testAsyncExample()

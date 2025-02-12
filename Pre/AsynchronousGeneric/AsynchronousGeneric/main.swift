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

func testNetworkSimulationExample() {
    print("-- network simulation example --")
    
    func fetchData(completion: @escaping (String) -> ()) {
        DispatchQueue.global().async {
            for i in 1...3 {
                print("\(i)초..")
                sleep(1)
            }
            
            let data = "데이터 로드 완료"
            
            DispatchQueue.main.async {
                completion(data)
                CFRunLoopStop(CFRunLoopGetCurrent())
            }
        }
    }
    
    fetchData { result in
        print(result)
    }
    
    CFRunLoopRun()
}

testAsyncExample()
testNetworkSimulationExample()

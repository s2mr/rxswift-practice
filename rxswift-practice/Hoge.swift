//
//  Hoge.swift
//  rxswift-practice
//
//  Created by 下村一将 on 2017/09/08.
//  Copyright © 2017 kazu. All rights reserved.
//

import Foundation
import RxSwift

class Hoge {
    //イベント発生元のオブジェクト
    private let eventSubject = PublishSubject<Int>()
    
    var event: Observable<Int> {return eventSubject}
    
    func doSomething() {
        //なんかする
        eventSubject.onNext(1)
    }
    
    func makeError() {
        eventSubject.onError(APIError.unknown)
    }
    
    func completed() {
        eventSubject.onCompleted()
    }
    
    enum APIError: Error {
        case unknown
    }
}

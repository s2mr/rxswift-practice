//
//  Presenter.swift
//  rxswift-practice
//
//  Created by 下村一将 on 2017/09/08.
//  Copyright © 2017 kazu. All rights reserved.
//

import Foundation
import RxSwift

class Presenter {
//    BehaviorSubject は最後の値を覚えていて、subscribeすると即座にそれを最初に通知する Subject です。生成するときに初期値を指定できます。
    private let buttonHiddenSubject = BehaviorSubject(value: false)
    
    var buttonHidden: Observable<Bool> {return buttonHiddenSubject}
    
    func start() {
        buttonHiddenSubject.onNext(true)
    }
    
    func stop() {
        buttonHiddenSubject.onNext(false)
    }
}

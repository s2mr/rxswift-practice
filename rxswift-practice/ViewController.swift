//
//  ViewController.swift
//  rxswift-practice
//
//  Created by 下村一将 on 2017/09/07.
//  Copyright © 2017 kazu. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var field1: UITextField!
    
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup() {
        field1.rx.text
            .map{"[\($0!)]"}
            .bind(to: label1.rx.text)
            .addDisposableTo(disposeBag)
    }


}


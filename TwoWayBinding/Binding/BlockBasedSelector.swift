//
//  BlockBasedSelector.swift
//  TestMVVM
//
//  Created by Rohit Negi on 07/12/19.
//  Copyright © 2019 Rohit Negi. All rights reserved.
//

import Foundation
import UIKit
@objc class _Selector: NSObject{
    static let shared = _Selector()
}
let Selector = _Selector.shared

func Selector(_ block: @escaping ()-> Void)-> Selector{
    let selector = NSSelectorFromString("\(CACurrentMediaTime())")
    class_addMethodWithBlock(_Selector.self, selector) { (_) in
        block()
    }
    return selector
}

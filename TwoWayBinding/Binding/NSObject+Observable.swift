//
//  NSObject+Observable.swift
//  TestMVVM
//
//  Created by Rohit Negi on 07/12/19.
//  Copyright © 2019 Rohit Negi. All rights reserved.
//

import Foundation

extension NSObject{
    func observe<T>(for observable: Observable<T>, with: @escaping (T)-> ()){
        observable.bind { (observable, value) in
            DispatchQueue.main.async {
                with(value)
            }
        }
    }
}

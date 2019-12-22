//
//  Observable.swift
//  TestMVVM
//
//  Created by Rohit Negi on 28/11/19.
//  Copyright © 2019 Rohit Negi. All rights reserved.
//

import Foundation
public class Observable<ObservedType>{
    typealias Observer = (_ observable: Observable<ObservedType>, ObservedType)-> Void
    private var observers: [Observer]
    var value: ObservedType?{
        didSet{
            if let value = value{
                notifyObservers(value)
            }
        }
    }
    
    private func notifyObservers(_ value: ObservedType){
        self.observers.forEach{ [unowned self](observer) in
            observer(self, value)
        }
    }
    
    init(_ value: ObservedType? = nil) {
        self.value = value
        observers = []
    }
    func bind(observer: @escaping Observer){
        self.observers.append(observer)
    }
}

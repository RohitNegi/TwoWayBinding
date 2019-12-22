//
//  UIControls+Bindable.swift
//  TestMVVM
//
//  Created by Rohit Negi on 07/12/19.
//  Copyright © 2019 Rohit Negi. All rights reserved.
//

import Foundation
import UIKit
extension UITextField: Bindable{
    typealias BindingType = String
    func observingValue()-> String?{
        return self.text
    }
    func updateValue(with value: String){
        self.text = value
    }
}

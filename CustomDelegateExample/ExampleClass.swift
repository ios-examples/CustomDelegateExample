//
//  ExampleClass.swift
//  DelegateExample
//
//  Created by Haydar Kulekci on 10/01/15.
//  Copyright (c) 2015 Haydar Kulekci. All rights reserved.
//

import Foundation


@objc protocol ExampleClassDelegate {
    optional func exampleDelegateMethod()
    func exampleDelegateMethod2()
}

class ExampleClass {
    
    var delegate:ExampleClassDelegate?
    
    init() {
        NSLog("Class init!")
    }
    
    func exampleMethod() {
        NSLog("ExampleClass exampleMethod2 Log");
        // We must use "!" for optional delegate function
        // I guess, it check the function is exist!
        delegate?.exampleDelegateMethod!();
    }
    
    func exampleMethod2() {
        NSLog("ExampleClass exampleMethod2 Log");
        delegate?.exampleDelegateMethod2();
    }
}
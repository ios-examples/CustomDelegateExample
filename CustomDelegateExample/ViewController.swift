//
//  ViewController.swift
//  DelegateExample
//
//  Created by Haydar Kulekci on 10/01/15.
//  Copyright (c) 2015 Haydar Kulekci. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ExampleClassDelegate {
    
    var ExampleClassObj:ExampleClass = ExampleClass();
    
    @IBAction func runExampleMethod2(sender: AnyObject) {
        ExampleClassObj.exampleMethod2()
    }
    
    @IBAction func runExampleMethod1(sender: AnyObject) {
        ExampleClassObj.exampleMethod()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ExampleClassObj.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func exampleDelegateMethod() {
        // Execute these method body when exampleMethod is finished
        NSLog("ViewController exampleDelegateMethod Log");
    }
    
    func exampleDelegateMethod2() {
        // Execute these method body when exampleMethod2 is finished
        NSLog("ViewController exampleDelegateMethod2 Log")
    }
    
    
}


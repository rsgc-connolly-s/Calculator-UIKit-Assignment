//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //this is the connection to the lable in out view
    @IBOutlet weak var lableDisplay: UILabel!
    
    // Create and instance (object) of the Calculator class
    var model = Calculator ()
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Clear the contents of the lable
        lableDisplay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        lableDisplay.text = model.providedValue
    }

    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        lableDisplay.text = model.providedValue
    }
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        lableDisplay.text = model.providedValue
    }
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        lableDisplay.text = model.providedValue
    }
    
    
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func deimalPressed(_ sender: Any) {
        model.addToNewValue(digit: ".")
        lableDisplay.text = model.providedValue
    }
    
    @IBAction func multiply(_ sender: Any) {
        model.multiply()
    }
    
    @IBAction func equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
            lableDisplay.text = String(format:"%g", model.computedValue!)
        }
    }
    
    @IBAction func division(_ sender: Any) {
        model.divide()
    }
    
    @IBAction func clear(_ sender: Any) {
        model.clear()
    }
    
}


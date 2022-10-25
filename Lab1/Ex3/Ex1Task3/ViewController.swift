//
//  ViewController.swift
//  Ex1Task3
//
//  Created by student on 03/10/2022.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var n1: NSTextField!
    @IBOutlet weak var n2: NSTextField!
    @IBOutlet weak var n3: NSTextField!
    
    @IBOutlet weak var average: NSTextField!
    @IBOutlet weak var sum: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func calculateBtn(_ sender: Any) {
        var suma:Int = Int(n1.stringValue)!+Int(n2.stringValue)!+Int(n3.stringValue)!
        
        sum.stringValue = "Suma: " + n1.stringValue
    }
    
}


//
//  ViewController.swift
//  Attributed Strings
//
//  Created by Kenneth L. Graham on 12/11/15.
//  Copyright © 2015 Ken Graham. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
    @IBOutlet var textView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        textView.backgroundColor = NSColor.whiteColor()
        textView.textColor = NSColor.redColor()
        
        let attributedString = NSMutableAttributedString(string: "The rain in Spain falls mainly in the plain")
        attributedString.addAttribute(NSForegroundColorAttributeName, value: NSColor.redColor(), range: NSMakeRange(0, 6))
        attributedString.addAttribute(NSForegroundColorAttributeName, value: NSColor.greenColor(), range: NSMakeRange(8, 29))
        
        textView.textStorage?.setAttributedString(attributedString)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func changeColorButton(sender: AnyObject) {
        textView.textStorage!.addAttribute(NSForegroundColorAttributeName, value: NSColor.blueColor(), range: NSMakeRange(8, 29))
    }
}


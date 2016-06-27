//
//  MainWindowController.swift
//  RandomPasswordGenerator
//
//  Created by MLS Discovery on 6/23/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(_ sender: AnyObject) {
        // get a random string of length 8
        let length = 8
        let password = generateRandomString(length)
        textField.stringValue = password
    }
    
}

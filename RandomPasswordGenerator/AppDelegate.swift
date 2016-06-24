//
//  AppDelegate.swift
//  RandomPasswordGenerator
//
//  Created by MLS Discovery on 6/23/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
            let mainWindowController = MainWindowController(windowNibName: "MainWindowController")
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}


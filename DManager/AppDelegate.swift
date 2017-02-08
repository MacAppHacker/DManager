//
//  AppDelegate.swift
//  DManager
//
//  Created by adi on 08.02.17.
//  Copyright © 2017 AmikhaielHacker. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var menu: NSMenu!

    let statusApp = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusApp.menu = menu
        statusApp.title = "DManager"
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func quit(_ sender: Any) {
        NSApplication.shared().terminate(self)
    }
    @IBAction func enableDisable(_ sender: Any) {
        EnableOrNot()
    }
    

}


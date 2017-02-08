//
//  utility.swift
//  DManager
//
//  Created by adi on 08.02.17.
//  Copyright © 2017 AmikhaielHacker. All rights reserved.
//

import Foundation

private let prefix = "tell application \"System Events\" to tell appearance preferences to"

var isDark: Bool {
    return Bool(runAppleScript("\(prefix) get dark mode")!)!
}

@discardableResult
func runAppleScript(_ source: String) -> String?{
    return NSAppleScript(source: source)?.executeAndReturnError(nil).stringValue
}

func EnableOrNot(boolean: Bool? = nil) {
    
    let value = boolean.map(String.init) ?? "not dark mode"
    
    runAppleScript("\(prefix) set dark mode to \(value)")
}

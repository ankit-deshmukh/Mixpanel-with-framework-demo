//
//  DemoClass.swift
//  MixpanelWithFrameworkDemo
//
//  Created by Ankit Deshmukh on 29/09/22.
//

import Foundation
import Mixpanel

public class DemoClass: NSObject {
    
    public static let shared = DemoClass()
    
    // This function only initialises Mixpanel
    public func demoFunction() {
        Mixpanel.initialize(token: "1234567890abcd", trackAutomaticEvents: false)
        print("Mixpanel initialised")
        
        Mixpanel.mainInstance().track(event: "Demo Framework", properties: [
            "testing" : "done"
        ])
    }
}

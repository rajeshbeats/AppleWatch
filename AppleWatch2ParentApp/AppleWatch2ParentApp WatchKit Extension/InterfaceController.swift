//
//  InterfaceController.swift
//  AppleWatch2ParentApp WatchKit Extension
//
//  Created by Rajesh on 13/05/15.
//  Copyright (c) 2015 Rajesh. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBAction func hiButtonPress() {
 
        //prepare message for parent app
        var userInfo = ["message": "Message from Watch : Hi"]
        //call the api
        WKInterfaceController.openParentApplication(userInfo, reply: { (response : [NSObject : AnyObject]!, error:NSError!) -> Void in
            
            //respons from parent app
            println("Response from Parent App \(response)")
        })
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

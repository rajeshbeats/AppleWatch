# AppleWatch Programming

Apple Watch and iPhone app (Parent App) communication sample application

AppDelegate.swift - Parent AppDelegate class
WatchKit Listner 
func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: (([NSObject : AnyObject]!) -> Void)!){

//handle watchkit communication
}

In WatckKit Extension, Communicate to parent app using the below api
WKInterfaceController.openParentApplication(userInfo, reply: { (response : [NSObject : AnyObject]!, error:NSError!) -> Void in
            
            //respons from parent app
       
  })

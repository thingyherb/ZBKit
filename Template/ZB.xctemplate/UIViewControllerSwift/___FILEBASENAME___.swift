//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    // MARK: Life circle
    deinit {
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize
        self.initialize()

        // layout subviews
        self.layout()
    }

    func initialize() {
        // You should add subviews here, just add subviews
        
    }

    func layout() {
        // You should set subviews constrainsts or frame here

    }

    // MARK: Receive Notification
    func didReveiveKeyWillShowNotification(notification:NSNotification) {

    }

    // MARK: System Delegate
    // MARK: -- System Delegate1


    // MARK: Custom Delegate
    // MARK: -- Custom Delegate1


    // MARK: Event Response
    func didPressOneButton(sender: UIButton) {
        
        
    }

    // MARK: - MemroyWarning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

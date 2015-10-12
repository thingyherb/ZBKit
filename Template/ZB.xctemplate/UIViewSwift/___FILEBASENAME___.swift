//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    
    // MARK: Lazy

    // MARK: Deinit
    deinit {
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    // MARK: Initialize
    required init(coder: NSCoder) {
        super.init(coder: coder)!
        
        // initialize
        self.initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // initialize
        self.initialize()
    }
    
    override func drawRect(rect: CGRect) {
        
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
}


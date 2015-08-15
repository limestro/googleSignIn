//
//  ViewController.swift
//  googleSignIn
//
//  Created by Mike Limestro on 8/13/15.
//  Copyright (c) 2015 Mike Limestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        GIDSignIn.sharedInstance().uiDelegate = self
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "receiveToggleAuthUINotification:",
            name: "ToggleAuthUINotification",
            object: nil)
        
        GIDSignIn.sharedInstance().signIn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self,
            name: "ToggleAuthUINotification",
            object: nil)
    }
    
    @objc func receiveToggleAuthUINotification(notification: NSNotification) {
        if (notification.name == "ToggleAuthUINotification") {
            self.toggleAuthUI()
            if notification.userInfo != nil {
                let userInfo:Dictionary<String,String!> =
                notification.userInfo as! Dictionary<String,String!>
                
            }
        }
    }
    
    func toggleAuthUI() {
        if (GIDSignIn.sharedInstance().hasAuthInKeychain()){
            // Signed in
        } else {

        }
    }



}


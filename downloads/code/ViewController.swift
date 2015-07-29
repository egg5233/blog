//
//  ViewController.swift
//  FBDemo
//
//  Created by David on 2015/7/29.
//  Copyright © 2015年 David. All rights reserved.
//

import UIKit
import AFNetworking
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit

class ViewController: UIViewController , FBSDKLoginButtonDelegate{

    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fbLoginButton.readPermissions=["public_profile", "email", "user_friends"]
        fbLoginButton.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!){
        print(result.grantedPermissions)
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
    }
}


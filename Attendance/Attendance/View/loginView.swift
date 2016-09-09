//
//  loginView.swift
//  Attendance
//
//  Created by Ben Wernsman on 9/9/16.
//  Copyright © 2016 Ben Wernsman. All rights reserved.
//

import Foundation
import UIKit

class loginView: UIViewController {
    
    @IBAction func loginBtn(sender: AnyObject) {
        login()
    }
    
    override func viewDidAppear(animated: Bool) {
        print("Login View Appeeared")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login(){
        dispatch_async(dispatch_get_main_queue(), {self.performSegueWithIdentifier("login", sender: self) })
    }
    
    
}

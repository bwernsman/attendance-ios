//
//  storage.swift
//  Buzz
//
//  Created by Ben Wernsman on 3/12/16.
//  Copyright © 2016 Buzz. All rights reserved.
//

import Foundation
import UIKit


class Main {
    
    //Environment
    var environment:String = ""
    var restURL:String = ""
    
    //Colors
    var textColor:UIColor = UIColor.whiteColor()
    var headerColor:UIColor = UIColor(red: 85/255, green: 174/255, blue: 58/255, alpha: 1)
    var tintColor:UIColor = UIColor.whiteColor()
    var backgroundColor:UIColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
    
    
    //User Information
    var token:String = ""
    var name:String = ""
    var UID:String = ""
    var email:String = ""
    var profilePic:UIImage = UIImage()
    
}

var storage = Main()
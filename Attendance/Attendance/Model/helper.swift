//
//  helper.swift
//  Buzz
//
//  Created by Ben Wernsman on 4/12/16.
//  Copyright © 2016 Buzz. All rights reserved.
//

import Foundation
import UIKit

class helperMethod {
    
    var screenSize: CGRect = UIScreen.mainScreen().bounds
    var _W:CGFloat
    var _H:CGFloat
    
    init() {
        _W = screenSize.width
        _H = screenSize.height
    }
}

var helper = helperMethod()
//
//  ConfigManager.swift
//  TeamLift
//
//  Created by Ben Wernsman on 8/16/16.
//  Copyright © 2016 BenWernsman. All rights reserved.
//

import Foundation
import SwiftyJSON

class ConfigManager{
    func getConfig(){
        if let path = NSBundle.mainBundle().pathForResource("config", ofType: "json") {
            do {
                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                let jsonObj = JSON(data: data)
                if jsonObj != JSON.null {
                    let mode = jsonObj["mode"].stringValue
                    storage.environment = mode
                    storage.restURL = jsonObj[mode]["restURL"].stringValue
                } else {
                    print("could not get json from file, make sure that file contains valid json.")
                }
            } catch let error as NSError {
                print(error.localizedDescription)
                print("Error Parsing")
            }
        } else {
            print("Invalid filename/path.")
        }
    }
}

var config = ConfigManager()

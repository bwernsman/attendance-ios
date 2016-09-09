//
//  RestManager.swift
//  Buzz
//
//  Created by Ben Wernsman on 3/13/16.
//  Copyright © 2016 Buzz. All rights reserved.
//

import Foundation
import SwiftyJSON
import SystemConfiguration
import Alamofire


class RestApiManager: NSObject {
    
    func login(callback: (Bool) -> ()){
        let params:[String: String] = ["token":storage.token]
        let url:String = "authorize_user"
        self.apiCall(url,params: params,type: "POST",idToken: storage.token) { (response) in
            return callback(response)
        }
    }
    
    func apiCall(url:String,params:[String: String],type:String,idToken:String,callback: (Bool) -> ()){
        if(type == "POST"){
            Alamofire.request(.POST, storage.restURL + url,parameters: params,encoding: .JSON)
                .responseString { response in
                    print(response)
                    
                    /*
                     let json = JSON(data: response.data!)
                     if(json == nil){
                     return callback(false)
                     }
                     */
                    
                    //Return true for now
                    //Update with handler to determine request
                    return callback(true)
            }
        }
    }
    
    //Check For Internet Connection
    func isConnectedToNetwork() -> Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        let defaultRouteReachability = withUnsafePointer(&zeroAddress) {
            SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
        }
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
            return false
        }
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        return (isReachable && !needsConnection)
    }
}

var restManager = RestApiManager()

//
//  thirdTabView.swift
//  Attendance
//
//  Created by Ben Wernsman on 9/9/16.
//  Copyright © 2016 Ben Wernsman. All rights reserved.
//

import Foundation
import UIKit

class thirdTabView: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set title
        self.title = "Facebook"
        
        //Load Website
        let url = NSURL (string:"https://www.facebook.com");
        let requestObj = NSURLRequest(URL: url!);
        webView.delegate = self
        webView.loadRequest(requestObj);
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("Did start loading")
        
    }
    
    func webViewDidFinishLoad(webView : UIWebView) {
        print("Ended loading")
        //indicator.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
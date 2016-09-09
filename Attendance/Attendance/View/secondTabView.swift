//
//  secondTabView.swift
//  Attendance
//
//  Created by Ben Wernsman on 9/9/16.
//  Copyright © 2016 Ben Wernsman. All rights reserved.
//

import Foundation
import UIKit

class secondTabView: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set title
        self.title = "Apple"
        
        //Load Website
        let url = NSURL (string:"https://www.apple.com");
        let requestObj = NSURLRequest(URL: url!);
        webView.delegate = self
        webView.loadRequest(requestObj);
        
        indicator.startAnimating()
        indicator.hidesWhenStopped = true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("Did start loading")
        webView.alpha = 0.0
        
    }
    
    func webViewDidFinishLoad(webView : UIWebView) {
        print("Ended loading")
        indicator.stopAnimating()
        webView.alpha = 1.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
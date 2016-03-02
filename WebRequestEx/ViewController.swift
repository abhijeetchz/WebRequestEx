//
//  ViewController.swift
//  WebRequestEx
//
//  Created by Abhijeet Chaudhary on 27/01/16.
//  Copyright © 2016 Abhijeet Chaudhary. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    

    @IBOutlet weak var VCContainer: UIView!
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView = WKWebView()
        VCContainer.addSubview(webView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, VCContainer.bounds.width, VCContainer.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }

    @IBAction func btnLoadSwiftACTION(sender: UIButton) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    @IBAction func btnLoadGossipACTION(sender: AnyObject) {
        loadRequest("http://www.tmz.com")
    }
    
    @IBAction func btnLoadInstagramACTION(sender: UIButton) {
        loadRequest("http://blog.instagram.com")
    }
    
    
    func loadRequest(urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
}


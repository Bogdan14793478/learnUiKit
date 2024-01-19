//
//  WebViewActivityIndicatorPdfController.swift
//  AlertController
//
//  Created by Богдан on 1/18/24.
//

import UIKit
import WebKit

class WebViewActivityIndicatorPdfController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var goBack: UIBarButtonItem!
    
    @IBOutlet weak var goForward: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if  let myUrl = URL(string: "https://www.google.com.ua"){
            let request = URLRequest(url: myUrl)
            if webView != nil {
                   webView.load(request)
               } else {
                   print("WKWebView is nil.")
               }
            
            webView.load(request)}
        
    }
    // Mark: - Action
    
    @IBAction func goBackAction(_ sender: Any) {
        if webView.canGoBack{
            print("goBackAction")
            webView.goBack()
        }
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
        if webView.canGoForward{
            print("goForwardAction")

            webView.goForward()
        }
    }
    
    @IBAction func reloadAction(_ sender: Any) {
        webView.reload()
    }
    
    
    
}

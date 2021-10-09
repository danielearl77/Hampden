//
//  InfoViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit
import WebKit

class InfoViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    func loadStadiumInfo() {
        let fixturesURL = "http://en.wikipedia.org/wiki/Hampden_Park"
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func showLoadingWindow() {
        errorMsg.isHidden = true
        loadingSpinner.isHidden = false
        errorView.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        errorView.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        errorMsg.isHidden = false
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        errorMsg.isHidden = false
        loadingSpinner.isHidden = true
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        webView.navigationDelegate = self
        loadStadiumInfo()
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
}

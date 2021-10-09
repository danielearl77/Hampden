//
//  LiveTrainsViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit
import WebKit

class LiveTrainsViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    var station = ""
    
    func loadStationData() {
        
        var stationURL = "http://m.nationalrail.co.uk/pj/ldbboard/dep/"
        stationURL.append(station)
        let myURL = URL(string: stationURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //errorMsg.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        //errorMsgLabel.text = "Error Loading Page"
       // loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        //errorMsgLabel.text = "Error Loading Page"
        //loadingSpinner.isHidden = true
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadStationData()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToRail", sender: self)
    }
}

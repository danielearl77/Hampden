//
//  AboutViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutTextBox: UITextView!
    
    override func viewDidLoad() {
        let versionNumber = Bundle.main.infoDictionary!["CFBundleShortVersionString"]!
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "yyyy"
        let copyDate = dateFormatter.string(from: currentDate)
        
        let aboutText = "This app aims to provide travel information for fans travelling to events at Hampden Park.\n\nHelp keep this app free by leaving us a digital tip - tap the Support Us button.\n\nAll directions given in this app are taken from either maps or personal experience.  Please contact us if you think the directions are wrong or can provide clearer routes to the stadium.\n\nThis app is not affiliated with Hampden Park or the Scottish FA, and neither has provided any information for this app.  Stadium Information is linked from the www.wikipedia.org website and train data is linked from www.nationalrail.co.uk.\n\nPicture Credit: daniel0685 [https://flic.kr/p/cEuJ6s], https://creativecommons.org/licenses/by/2.0/legalcode.\n\nFor more information see our website www.phone-app.co.uk\n\nCopyright (c) \(copyDate) Daniel Earl.\nVersion: \(versionNumber)"
        aboutTextBox.text = aboutText
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
    @IBAction func navBackToAbout( _ seg: UIStoryboardSegue) {
        print("unwind run")
    }
    /*
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

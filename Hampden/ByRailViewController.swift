//
//  ByRailViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit

class ByRailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
    @IBAction func navBackToRail( _ seg: UIStoryboardSegue) {
        //NSLog("Unwind")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
        switch(segue.identifier ?? "") {
        case "mount":
            let sendStation = segue.destination as? LiveTrainsViewController
            sendStation?.station = "MFL"
        case "kings":
            let sendStation = segue.destination as? LiveTrainsViewController
            sendStation?.station = "KGP"
        case "backToHome":
            break
        default:
            fatalError("Unexpected Segue Identifier: \(String(describing: segue.identifier))")
        }
    }

}

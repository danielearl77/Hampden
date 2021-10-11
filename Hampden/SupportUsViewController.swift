//
//  SupportUsViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit

class SupportUsViewController: UIViewController {

    
    @IBOutlet weak var ProductTitle: UILabel!
    @IBOutlet weak var ProductDetail: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    @IBOutlet weak var ProductPurchaseBtn: UIButton!
    @IBOutlet weak var IAPLoadingView: UIView!
    
    let kTipCount = "countOfTipsGiven"
    
    
    // MARK: - Functions
    func getNumberOfTipsGiven() -> Int {
        let userDefaults: UserDefaults = UserDefaults.standard
        return userDefaults.integer(forKey: kTipCount)
    }
    
    func updateNumberOfTipsGiven() {
        let userDefaults: UserDefaults = UserDefaults.standard
        let count = userDefaults.integer(forKey: kTipCount)
        let update = count + 1
        userDefaults.set(update, forKey: kTipCount)
    }
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        let test = getNumberOfTipsGiven()
        print(test)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToAbout", sender: self)
    }
}

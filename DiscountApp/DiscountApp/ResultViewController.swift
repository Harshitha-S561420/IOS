//
//  ResultViewController.swift
//  DiscountApp
//
//  Created by Harshitha Alapati on 10/31/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayAmountOL: UILabel!
    
    
    @IBOutlet weak var displayDiscRateOL: UILabel!
    
    
    @IBOutlet weak var displayPriceAftewrDiscOL: UILabel!
    
    
    var amount = ""
    var discrate = ""
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        displayAmountOL.text! += amount
        displayDiscRateOL.text! += discrate
        displayPriceAftewrDiscOL.text! += String(priceAfterDiscount)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

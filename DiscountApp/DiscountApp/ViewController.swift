//
//  ViewController.swift
//  DiscountApp
//
//  Created by Harshitha Alapati on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var amountOL: UITextField!
    
    
    
    @IBOutlet weak var discrateOL: UITextField!
    
    
    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func calic(_ sender: UIButton) {
        //Read the amount from amountOL
        var amount = Double(amountOL.text!) ?? 0.0
        var discrate = Double(discrateOL.text!) ?? 0.0
        
        priceAfterDiscount = amount - (amount * discrate/100)
    }
    override func prepare(for segue : UIStoryboardSegue, sender: Any?){
        var transition = "resultSegue"
        if transition == "resultSegue"{
            var destination = segue.destination as!ResultViewController
            destination.amount = amountOL.text!
            destination.discrate = discrateOL.text!
            destination.priceAfterDiscount = priceAfterDiscount
        }
    }
    
    
}

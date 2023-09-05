//
//  ViewController.swift
//  voting
//
//  Created by Alapati,Harshitha Chowdary on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var InputOL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var OutputOL: UILabel!
    
    
    @IBAction func Checkeligibility(_ sender: Any) {
        //Read the input text and assign it to a variable
        //convert string to int
        var input = InputOL.text
        var output = OutputOL.text
        var number = Int(InputOL.text!) ?? 0
        if (number>=18){
            OutputOL.text = "The person is eligible for voting"
        }
        else{
            OutputOL.text = "The person is not eligible for voting"
        }
    }
    
}


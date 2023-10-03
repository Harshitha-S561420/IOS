//
//  ViewController.swift
//  GreatestNumber
//
//  Created by Alapati,Harshitha Chowdary on 8/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var inputOL1: UITextField!
    
    @IBOutlet weak var outputOL: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Btnclicked: UILabel!
    //Read the input and input2
    var input1 = Int(inputOL.text!)
    var input2 = Int(inputOL1.text!)
    
    }
if(input1!>input2!){
    outputOL.text=("\(input1!)is the greatest number")
}
else if(input1! < input2!){
    outputOL.text=("\(input2!)is the greatest number")
    
    
    
}


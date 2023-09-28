//
//  ViewController.swift
//  CodeDisplay
//
//  Created by Alapati,Harshitha Chowdary on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    
    @IBOutlet weak var crsNumber: UILabel!
    
    
    @IBOutlet weak var crsName: UILabel!
    
    
    @IBOutlet weak var semOffered: UILabel!
    
   
    @IBOutlet weak var prevbtnOl: UIButton!
    
    @IBOutlet weak var nextbtnOL: UIButton!
    
    //create
    var courses = [["img01","44542","Network Security","Fall 2023"],
                   ["img02","44643","ios","Fall 2023"],
                   ["img03","44555","Data Streaming","Summer 2024"]]
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //previous button is disabled
        prevbtnOl.isEnabled = false
        
        //Display the first course details
        updateDisplay(imageNumber)
        imageDisplay.image = UIImage(named: courses[0][0])
    }


    
    @IBAction func prevbthClicked(_ sender: Any) {
        
        //if we click prev next button shouls enabled
        
        nextbtnOL.isEnabled = true
        
        //Decrement the image number
        imageNumber -= 1
        
        //update the display using updateDisplay() function
        updateDisplay(imageNumber)
        
        //If we reach begining of the array, prev button should be disabled
        
        if(imageNumber == 0){
            prevbtnOl.isEnabled = false
        }
         
        
        
    }
    
    
    @IBAction func nextbtnClicked(_ sender: Any) {
        
        //previous Button should be enabled
        prevbtnOl.isEnabled = true
        
        //Next element in the courses array must be displayed
        imageNumber += 1
        
        //call the updateDisplay() method
        updateDisplay(imageNumber)
        
        //when you reach the end of the array,next button should be disabled
        if(imageNumber==courses.count-1){
            nextbtnOL.isEnabled = false
        }
    }
    func updateDisplay(_ imageNumber:Int){
        crsNumber.text = courses[imageNumber][1]
        crsName.text = courses[imageNumber][2]
        semOffered.text = courses[imageNumber][3]
        imageDisplay.image = UIImage(named: courses[imageNumber][0])
        
    }
}


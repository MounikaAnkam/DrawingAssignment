//
//  ViewController.swift
//  Drawing Assignment
//
//  Created by Mounika Ankam on 4/3/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.

//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myFirstView1: chessView!
    
    @IBOutlet weak var mySecondView1: rainView!
  
    @IBOutlet weak var myThirdView1: hillsView!
    
    @IBAction func selection(sender: AnyObject) {
        
       var selectedOption = (sender as UISegmentedControl).selectedSegmentIndex
        
        switch selectedOption {
            
        case 0 :
            myFirstView1.hidden = false
            mySecondView1.hidden = true
            myThirdView1.hidden = true
            
        case 1 :
            
            myFirstView1.hidden = true
            mySecondView1.hidden = false
            myThirdView1.hidden = true
        case 2 :
            myFirstView1.hidden = true
            mySecondView1.hidden = true
            myThirdView1.hidden = false
        default :
          print(" ")
            
        }
  
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mySecondView1.hidden = true
        myThirdView1.hidden = true
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


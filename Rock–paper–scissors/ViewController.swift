//
//  ViewController.swift
//  Rock–paper–scissors
//
//  Created by Mert Demirezen on 1.06.2019.
//  Copyright © 2019 Mert Demirezen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOUTLETS
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // IBActions -____+-----+-----+_+
    
    @IBAction func viaIntellinge(_ sender: Any) {
        performSegue(withIdentifier: "viaComputer", sender: nil)
        
    }
    
    
    @IBAction func twoPlayer(_ sender: Any) {
        performSegue(withIdentifier: "viaPlayer", sender: nil)
    }
    
    
    
    
    
    

}


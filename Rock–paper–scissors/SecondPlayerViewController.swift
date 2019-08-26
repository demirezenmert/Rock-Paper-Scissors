//
//  SecondPlayerViewController.swift
//  Rock–paper–scissors
//
//  Created by Mert Demirezen on 2.06.2019.
//  Copyright © 2019 Mert Demirezen. All rights reserved.
//

import UIKit

class SecondPlayerViewController: UIViewController {

//    IBVaribles
     var secondChoice : Int!
    
//    IBOUTLETS
    
    @IBOutlet var choiceArrau: [UIButton]!
    @IBOutlet weak var gobackk: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      gobackk.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchedSeconkd(_ sender: UIButton) {
       let choices = sender.tag
        secondChoice = choices
        print(secondChoice)
       gobackk.isHidden = false
        // print("Seconde choice \(secondChoice)")
        //secondChoice = choiceArrau.index(before: 3)
        
        
//        self.dismiss(animated: true, completion: nil)
    }
    
 
    @IBAction func goBack(_ sender: Any) {
        
    }
}

//
//  ComputerViewController.swift
//  Rock–paper–scissors
//
//  Created by Mert Demirezen on 1.06.2019.
//  Copyright © 2019 Mert Demirezen. All rights reserved.
//

import UIKit

class ComputerViewController: UIViewController {
    
    //IBVARIABLES-----------=========================------------
    var winner = "Scoreless"
    var gamePoint = 10 {
        willSet (newGame){
            gamePointText.text = "Game: \(newGame)"
        }
    }
   
    var computerPoint = 0 {
        willSet (newPoint) {
            computerPointText.text = "\(newPoint)"
        }
        
    }
    var playerPoint = 0 {
        willSet (newPointp) {
            playerPointText.text  = "\(newPointp)"
        }
    }
    var choices = ["Rock","Paper","Scissors"]
    
    
    //IBOUTLETSS-----------=========================------------
    
    @IBOutlet weak var gamePointText: UILabel!
    @IBOutlet weak var computerPointText: UILabel!
    @IBOutlet weak var playerPointText: UILabel!
    @IBOutlet weak var mark: UILabel!
    
    @IBOutlet weak var playerChoice: UILabel!
    @IBOutlet weak var computerChoice: UILabel!
    
    @IBOutlet weak var whoWin: UILabel!
    @IBOutlet var gameArray: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mark.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    // MARK: - Navigation-----------=========================------------
    
    @IBAction func finishedGame(_ sender: Any) {
        self.finished()
    }
    
    
    //IBACTIONS-----------=========================------------
    

    @IBAction func clickedMoves(_ sender: UIButton) {
        if gamePoint < 2 {
            win()
            gameOver()
            
        }
        let playerCh = sender.tag
        playerChoice.text = choices[playerCh]
        let cm = Int ( arc4random_uniform(3))
        computerChoice.text = choices[cm]
        game(PlayerMove: playerCh, ComputerMv: cm)
       
}


    @objc func game (PlayerMove pm : Int , ComputerMv cm : Int) {
       
        if pm == 0 && cm == 0 {
            whoWin.text = "Scoreless"
            gamePoint -= 1
        }
        else if pm == 0 && cm == 1 {
            whoWin.text = "Computer Win"
            self.computerPoint += 1
            gamePoint -= 1
        }
        else if pm == 0 && cm == 2 {
            whoWin.text = "Player Win"
            self.playerPoint += 1
            gamePoint -= 1
        }
        else if pm == 1 && cm == 1 {
            whoWin.text = "Scoreless"
            gamePoint -= 1
        }
        else if pm == 1 && cm == 0 {
            whoWin.text = "Player Win"
            self.playerPoint += 1
            gamePoint -= 1
        }
        else if pm == 1 && cm == 2 {
            whoWin.text = "Computer Win"
            self.computerPoint += 1
            gamePoint -= 1
            
        }
        else if pm == 2 && cm == 2 {
            whoWin.text = "Scoreless"
            gamePoint -= 1
        }
        else if pm == 2 && cm == 0 {
            whoWin.text = "Computer Win"
            self.computerPoint += 1
            gamePoint -= 1
        }
        else if pm == 2 && cm == 1 {
            whoWin.text = "Player Win"
            self.playerPoint += 1
            gamePoint -= 1
        }
        else {
            print("Error Moving")
        }
      
    }
    @objc func win () {
        if playerPoint > computerPoint {
            winner = "Player Win"
        }else if computerPoint > playerPoint {
            winner = "Computer Win"
        }
        else {
            winner = "Scoreless"
            
        }
    }
    @objc func gameOver () {
        
        let alert = UIAlertController (title: "Game Over", message: "\(winner)!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default) { (UIAlertAction) in
            self.finished()
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func finished () {
        playerPoint = 0
        computerPoint = 0
        playerChoice.text = ""
        computerChoice.text = ""
        whoWin.text = ""
        performSegue(withIdentifier: "goBack", sender: nil)
    }
    
    
    
    
    
        
        
        
}

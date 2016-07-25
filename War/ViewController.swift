//
//  ViewController.swift
//  
//
//  Created by Kashyap Raval on 2016.
//  Copyright © 2016 Kashyap Raval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageVIew: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "Jack", "Queen", "King", "Ace"]
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first imageview
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Randomize a number for the second imageview
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string wiht the random number
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // Set the second card image view to the asset corresponding to the randomized number
        self.secondCardImageVIew.image = UIImage(named: secondCardString)
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            
            // TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
            // TODO: numbers are equal
        else if firstRandomNumber == secondRandomNumber {
            
            
        }
        else {
            // TODO: second card is larger
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
    }

}


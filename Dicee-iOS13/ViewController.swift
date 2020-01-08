//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceNumberImages = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo") ,#imageLiteral(resourceName: "DiceThree") ,#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var leftDiceNumber = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDiceImage()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
                                        
        leftDiceNumber+=1
        if leftDiceNumber == 6{
            leftDiceNumber = 0
        }
        showDiceImage()
        
        
    }
     func showDiceImage(){
        diceImageView1.image = diceNumberImages[leftDiceNumber]
        diceImageView2.image = diceNumberImages[5-leftDiceNumber]
    }
}


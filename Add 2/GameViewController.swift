//
//  ViewController.swift
//  Add 2
//
//  Created by Sourabh kehar on 2020-04-08.
//  Copyright © 2020 Sourabh kehar. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
   
    
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateScoreLabel()
        updateNumberLabel()
    }
    func updateScoreLabel(){
        
        ScoreLabel?.text = String(score)
    }
    
    func updateNumberLabel(){
        numberLabel?.text = String.randomNumber(length: 4)
    }
    @IBAction func inputDidChange(_ sender: Any) {
           
           guard let numberText = numberLabel.text, let inputText = inputField.text else{
               return
           }
        
        guard inputText.count == 4 else{
            return
        }
       }
}


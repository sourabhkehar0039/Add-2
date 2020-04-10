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
   
    var timer:Timer?
    var seconds = 60
    
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateScoreLabel()
        updateNumberLabel()
        updateTimeLabel()
    }
    func updateScoreLabel(){
        
        ScoreLabel?.text = String(score)
    }
    
    func updateNumberLabel(){
        numberLabel?.text = String.randomNumber(length: 4)
    }
    
    func updateTimeLabel(){
        let min = (seconds/60) % 60
        let sec = seconds % 60
        timeLabel?.text = String(format: "%02d", min) + ":" + String(format: "%02d", sec)
        
    }
    
    @IBAction func inputDidChange(_ sender: Any) {
           
           guard let numberText = numberLabel.text, let inputText = inputField.text else{
               return
           }
        
        guard inputText.count == 4 else{
            return
        }
        var isCorrect = true
        
        for n in 0..<4{
            
            var input = inputText.integer(at: n)
            var number = numberText.integer(at: n)
            
            if input == 0{
                input = 10
            }
            
            if input != number+1{
                isCorrect = false
                break
            }
            
            if isCorrect{
                score += 1
            }else{
                score -= 1
            }
            updateNumberLabel()
            updateScoreLabel()
            inputField?.text = ""
            
            if timer == nil{
                timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
                    if self.seconds <= 60{
                        self.seconds -= 1
                        self.updateTimeLabel()
                    }
                })
            }
        }
       }
}


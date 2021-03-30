//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    
    @IBAction func anserButtoPressed(_ sender: UIButton) {
        questionNumber += 1
        
        
        
        print(currentProgress)
        updateUI()
        progressBar.progress = currentProgress
        
        
        let answer = answerChecker(userAnswer: sender.currentTitle!)
        
        
        if answer{
            trueButton.backgroundColor = UIColor.green
        }
        else{
            falseButton.backgroundColor = UIColor.red
        }
        
        
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self ,selector:#selector(updateUI), userInfo:nil, repeats: true)
        
        
    }
    
    
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
         //Do any additional setup after loading the view.
        
        updateUI()
    }
    
   @objc func updateUI(){
 
        if(questionNumber<questions.count){
            questionLable.text = questions[questionNumber].question
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
        else{
            questionNumber = 0
            score = 0
        }
        
        
    }


}


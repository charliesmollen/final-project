//
//  ViewController.swift
//  final project
//
//  Created by Student on 4/10/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import AudioToolbox


struct QuestionStruct {
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
}




class ViewController: UIViewController {
    
    
    @IBAction func showFinalScore(_ sender: AnyObject) {
         totalScore = "Your final score is \(points)."
        
        
    }
   

    var points = 0
    
    var totalScore = String()
    
    
// Button 1
    
    @IBAction func button1(_ sender: AnyObject) {
        
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
        if answerNumber == 0{
            
            pickQuestion()
            
        } else {
            
            NSLog("Wrong")
       points -= 1
        }
        
        
        
    }
    
// Button 2
    
    @IBAction func button2(_ sender: AnyObject) {
        
         AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
        if answerNumber == 1{
        
        pickQuestion()
        
    } else {
        
        NSLog("Wrong")
            points -= 1
    }
    }
    
// Button 3
    
    @IBAction func button3(_ sender: AnyObject) {
        
         AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
        if answerNumber == 2{
            
            pickQuestion()
            
        } else {
            
            NSLog("Wrong")
   points -= 1
        }
        }
    
// Button 4
    
    @IBAction func button4(_ sender: AnyObject) {
        
         AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
        if answerNumber == 3{
            
            pickQuestion()
            
            
            
        } else {
            
            NSLog("Wrong")
   points -= 1
        }
    }
    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!

    var questions = [QuestionStruct]()
    
    var questionNumber = Int()
    
    var answerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
// Question 1
        
   questions = [QuestionStruct(Question: "When was Seton Hall Prep founded?", Answers: ["1776", "1856", "1852", "1912"], Answer: 1)]
    
// Question 2
        
        questions += [QuestionStruct(Question: "What town was Seton Hall Prep founded in?", Answers: ["South Orange", "West Orange", "Newark", "Madison"], Answer: 3)]
        
// Question 3
        
        questions += [QuestionStruct(Question: "In 2005 what anniversary did the Prep Celebrate?", Answers: ["150 years", "155 years", "160 years", "165 years"], Answer: 0)]
        
// Question 4
        
        questions += [QuestionStruct(Question: "What professional athelete graduated from the Prep?", Answers: ["Kyrie Irving", "Rick Porcello", "Jabrill Peppers", "Derek Jeter"], Answer: 1)]
        
// Question 5
        
        questions += [QuestionStruct(Question: "What street is the Prep located on today?", Answers: ["Madison Ave", "Main Street", "Northfield", "Leigh Drive"], Answer: 2)]
    
        
// Question 6 
        
        questions += [QuestionStruct(Question: "Seton Hall Prep's atmosphere can be most described as a?", Answers: ["Middle School", "Sisterhood", "Fraterinty", "Brotherhood"], Answer: 3)]
        
    pickQuestion()

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func pickQuestion() {
        if questions.count > 0 {
            questionNumber = 0
            
            questionLabel.text = questions[questionNumber].Question
            

        
            answerNumber = questions[questionNumber].Answer
        
            for i in 0..<buttons.count{
                
                buttons[i].setTitle(questions[questionNumber].Answers[i], for: UIControlState.normal)
                
               
                
            }
            questions.remove(at: questionNumber)
            
        } else {
            NSLog("Correct")
            points += 1
            

        }
        
        
    }
        
        }


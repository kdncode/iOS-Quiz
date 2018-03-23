//
//  ViewController.swift
//  Quiz
//
//  Created by Khoa Nguyen on 2/10/17.
//  Copyright © 2017 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
  
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RandomQuestions()
        Hide()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func RandomQuestions(){
        var RandomNumber = arc4random() % 8
        RandomNumber += 1
        
        switch(RandomNumber){
        case 1:
            QuestionLabel.text = "29, 27, 24, 20, 15, ... What is next?"
            Button1.setTitle("7", for: UIControlState.normal)
            Button2.setTitle("9", for: UIControlState.normal)
            Button3.setTitle("10", for: UIControlState.normal)
            Button4.setTitle("11", for: UIControlState.normal)
            CorrectAnswer = "2"
            
            break
            
        case 2:
            QuestionLabel.text = "How long is the Great Wall of China?"
            Button1.setTitle("4000 miles/6437 km", for: UIControlState.normal)
            Button2.setTitle("5000 miles/80477 km", for: UIControlState.normal)
            Button3.setTitle("6000 miles/9656 km", for: UIControlState.normal)
            Button4.setTitle("7000 miles/11265 km", for: UIControlState.normal)
            CorrectAnswer = "1"
            
            break
            
        case 3:
           
            QuestionLabel.text = "“Boat is to water” therefore “Plane is to _____”"
            Button1.setTitle("Fly", for: UIControlState.normal)
            Button2.setTitle("Sky", for: UIControlState.normal)
            Button3.setTitle("Float", for: UIControlState.normal)
            Button4.setTitle("Air", for: UIControlState.normal)
            CorrectAnswer = "4"
            
            break
        case 4:
         
            QuestionLabel.text = "What is the largest number of five digits?"
            Button1.setTitle("00009", for: UIControlState.normal)
            Button2.setTitle("90009", for: UIControlState.normal)
            Button3.setTitle("99999", for: UIControlState.normal)
            Button4.setTitle("99009", for: UIControlState.normal)
            CorrectAnswer = "3"
   
            break
            
        case 5:
            
            QuestionLabel.text = "What is the noisiest city in the world?"
            Button1.setTitle("New York", for: UIControlState.normal)
            Button2.setTitle("Tokyo", for: UIControlState.normal)
            Button3.setTitle("Hong Kong", for: UIControlState.normal)
            Button4.setTitle("Bangkok", for: UIControlState.normal)
            CorrectAnswer = "3"
          
            break

        case 6:
            
            QuestionLabel.text = "What is the capital city of Australia?"
            Button1.setTitle("Sydney", for: UIControlState.normal)
            Button2.setTitle("Melbourne", for: UIControlState.normal)
            Button3.setTitle("Perth", for: UIControlState.normal)
            Button4.setTitle("Canberra", for: UIControlState.normal)
            CorrectAnswer = "3"
          
            break

        case 7:
            
            QuestionLabel.text = "What is the largest state of the United States?"
            Button1.setTitle("Alaska", for: UIControlState.normal)
            Button2.setTitle("Texas", for: UIControlState.normal)
            Button3.setTitle("California", for: UIControlState.normal)
            Button4.setTitle("Florida", for: UIControlState.normal)
            CorrectAnswer = "1"
         
            break
            
        case 8:
            
            QuestionLabel.text = "“Pig is to pork” as “Cow is to _____”:"
            Button1.setTitle("Lamb", for: UIControlState.normal)
            Button2.setTitle("Beef", for: UIControlState.normal)
            Button3.setTitle("Stew", for: UIControlState.normal)
            Button4.setTitle("Cattle", for: UIControlState.normal)
            CorrectAnswer = "2"
        
            break
            
        case 9:
            
            QuestionLabel.text = "If Bob sold 15 apples in a working week, what's the average number of apples he sells each day?"
            Button1.setTitle("2", for: UIControlState.normal)
            Button2.setTitle("3", for: UIControlState.normal)
            Button3.setTitle("4", for: UIControlState.normal)
            Button4.setTitle("None of the above", for: UIControlState.normal)
            CorrectAnswer = "2"
          
            break
          
        default:
            
            break
            
        }
       
    }
    
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    
    func Unhide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    
    
    @IBAction func Button1Action(_ sender: Any) {
        Unhide()
        if(CorrectAnswer=="1"){
           LabelEnd.text = "You are correct!"
        }
        else{
            LabelEnd.text = "You are wrong!"
        }
    }
    
   
    @IBAction func Button2Action(_ sender: Any) {
        Unhide()
        if(CorrectAnswer=="2"){
            LabelEnd.text = "You are correct!"
        }
        else{
            LabelEnd.text = "You are wrong!"        }
    }
    
    
    @IBAction func Button3Action(_ sender: Any) {
        Unhide()
        if(CorrectAnswer=="3"){
            LabelEnd.text = "You are correct!"
        }
        else{
            LabelEnd.text = "You are wrong!"
        }
    }
    
    
    @IBAction func Button4Action(_ sender: Any) {
        Unhide()
        if(CorrectAnswer=="4"){
            LabelEnd.text = "You are correct!"
        }
        else{
            LabelEnd.text = "You are wrong!"
        }
    }

    @IBAction func Next(_ sender: Any) {
        RandomQuestions()
        Hide()
    }
}

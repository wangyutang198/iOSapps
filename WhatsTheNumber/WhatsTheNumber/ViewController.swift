//
//  ViewController.swift
//  WhatsTheNumber
//
//  Created by 王郁棠的iMac on 2025/9/1.
//

import UIKit

class ViewController: UIViewController {
    
    var answer = Int.random(in: 1...100)
    var maxNumber = 100
    var minNumber = 1
    var isOver = false
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBOutlet weak var InputTextField: UITextField!
    
    
    @IBAction func makeAGuess(_ sender: UIButton) {
        if isOver == false{
            //遊戲中
            print(answer)
            let inputText = InputTextField.text!
            
            //清空文字框
            InputTextField.text = ""
            
            print("input text = \(inputText)")
            
            let inputNumber = Int(inputText)
            
            if inputNumber == nil{
                messageLabel.text = "No input!  Guess a number between \(minNumber)~\(maxNumber)."
            }else{
                if inputNumber! > maxNumber{
                    messageLabel.text = "Too large! Guess a number between \(minNumber)~\(maxNumber)."
                }else if inputNumber! < minNumber{
                    messageLabel.text = "Too small! Guess a number between \(minNumber)~\(maxNumber)."
                }else{
                    if inputNumber == answer{
                        messageLabel.text = "You are right!  Press [Guess] to play again"
                        isOver = true
                    }else{
                        if inputNumber! > answer{
                           maxNumber = inputNumber!
                        }else{
                            minNumber = inputNumber!
                        }
                        messageLabel.text = "Try again! Guess a number between \(minNumber)~\(maxNumber)."
                        
                    }
                }
            }
        }else{
            //遊戲結束
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between \(minNumber)~\(maxNumber)."
            answer = Int.random(in: 1...100)
            isOver = false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //讓鍵盤跳出來
        InputTextField.becomeFirstResponder()
        
        
    }


}


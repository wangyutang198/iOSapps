//
//  ViewController.swift
//  HelloWorld
//
//  Created by 王郁棠的iMac on 2023/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        myLabel.text = "Hhello World"
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print("What's up")
        
        // Do any additional setup after loading the view.
    }


}


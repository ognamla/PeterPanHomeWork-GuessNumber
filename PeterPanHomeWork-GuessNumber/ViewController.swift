//
//  ViewController.swift
//  PeterPanHomeWork-GuessNumber
//
//  Created by Ognam.Chen on 2017/2/22.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessTextField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        let diceRoll = arc4random_uniform(6)
        let uint32guessTextField = UInt32(guessTextField.text!)
        
        if uint32guessTextField != nil {
            if uint32guessTextField == diceRoll {
                ansLabel.text = "Yes, it's \(diceRoll)"
            } else {
                ansLabel.text = "No, it's \(diceRoll)"
            }
        } else {
            ansLabel.text = "Please enter number!"
        }
        
        
        
        print(diceRoll)
        
    }
    
    @IBOutlet weak var ansLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameBrian = Hangman()
    
    
    
    @IBOutlet weak var userInputTextField: UITextField!
    
    @IBOutlet weak var underLineLabel: UILabel!
    @IBOutlet weak var cohortTextField: UITextField!
    
    

    
    @IBOutlet weak var notes: UILabel!
    
    @IBOutlet weak var hangmanPicture: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // step 3: set textfield to self
    userInputTextField.delegate = self
    cohortTextField.delegate = self
  }

    @IBAction func newGame(_ sender: UIButton) {
        newGameStart()
    }
    
    
    
    
    
    
    
}
// step: 1: conform to UITextFiledDelegate
extension ViewController: UITextFieldDelegate {
    // step 2: implement methods as needed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // dismiss keyboard
        textField.resignFirstResponder()
        
        if textField == cohortTextField {
            // do cohort logic
            print("cohort textField")
        }

        print("user entered \(userInputTextField.text ?? "nothing entered")")
        // does not matter here is true or false
        // since textField behaviour is on one line
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text ?? "")
        return true
    }
    
}




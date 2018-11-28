//
//  MultiPlayer.swift
//  Hangman
//
//  Created by TingxinLi on 11/26/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
//var correctWord = [String]() //输入保密的
//var wrongGuessesLetter = [String]()
//var guesses = [String]()// 猜字的
//var guessesChance:Int = 0
//var secureInput: String = ""
//var label: String = ""
//var noteLabel: String = ""
//var textField: Bool = false
//var gameStatus: Bool = false
//var hangmanPicture: UIImage = UIImage(named: "hangMan1")!

class Hangman {
    
    var correctWord = [String]() //输入保密的
    var guessesLetter = [String]()
    var guesses = [String]()// 猜字的
    var guessesChance:Int = 0
    var secureInput: String = ""
    var label: String = ""
    var noteLabel: String = ""//"_"
    var textField: Bool = false
    var gameStatus: Bool = false
    var hangmanPicture: UIImage = UIImage(named: "HangMan1")!
    //    func gameArray(word: String) {
//        gameStatus = false
//        for i in word {
//            correctWord.append("_")
//            guessesLetter.append(String(i))
//        }
//    }
    
//    init(guessesChance:Int, secureInput: String, label: String, textField: Bool, gameStatus: Bool,noteLabel: String, hangmanPicture: UIImage) {
//        self.guessesChance = guessesChance
//        self.secureInput = secureInput
//        self.label = label
//        self.textField = textField
//        self.gameStatus = gameStatus
//        self.noteLabel = noteLabel
//        self.hangmanPicture = hangmanPicture
  //      self.guessesLetter = Array(repeating: "_", count: Int(self.userInput)!)
     
        //for i in 0...Int(self.userInput)! - 1 {
        //    let index = self.userInput.index(self.userInput.startIndex, offsetBy: i)
         //   if (String(self.userInput[index]) == " ") {
            //    self.guessesLetter[i] = " "
         //   }
       // }
   // }
        func gameArray(word: String) -> String {
           // gameStatus = false
            for i in word {
                guesses.append("_")
                correctWord.append(String(i))
            }
            noteLabel = guesses.compactMap{$0}.joined(separator: " ")
            textField = true
        return noteLabel
        }
    //}//init{}
//    -> (String?,String)
    public func updateWord(word2: String) -> String{
        for a in 0..<correctWord.count {
            for b in correctWord {
                if correctWord[a] == word2 {
//                    userInput.remove(at: userInput.index(userInput.startIndex, offsetBy: num))
                    guesses[a] = correctWord[a]
        }
            }
    }
        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
        return noteLabel
    }
    
    func guesseCorrect(word2: String) -> String {
        if guesses == correctWord {
                        label = "WOW!!! YOU WIN!!!👏🏼"
                        gameStatus = true
            
                    }
        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
        return label
    }
    
    
    
//        if guesses == correctWord {
//            label = "WOW!!! YOU WIN!!!👏🏼"
//            gameStatus = true
//            break
//        }
//        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
//    }
//    if guesses.contains(word2){
//    noteLabel = "opp,You have guessed: \(word2)"
//    } else {
//    guessesChance += 1
//    //                updateWord(word2)
//    }
//} else {
//    if wrongGuessesLetter.contains(word2) {
//        noteLabel = "opp,You have guessed: \(word2)"
//    } else {
//        guessesChance += 1
//        wrongGuessesLetter.append(word2)
//        noteLabel = "Wrong! \(wrongGuessesLetter.compactMap{$0}.joined(separator: " "))"
//
//    }
//}
//if guessesChance > 1 && guessesChance < 7 {
//    hangmanPicture = UIImage(named: "HangMan1")!
//} else if guessesChance == 7 {
//    hangmanPicture = UIImage(named: "HangMan7")!
//    noteLabel = "Game Over! ☠️"
//    gameStatus = true
//}
    
    func guessLetter (word2: String) {
        if correctWord.contains(word2) == false {
            guessesChance += 1
    }
        guessesLetter.append(word2)
    }
    
    
    
    func newGameStart() {
        correctWord.removeAll()
        guessesLetter.removeAll()
        guesses.removeAll()
        noteLabel = "put new words"
        guessesChance = 0
       // hangmanPicture = UIImage(name:"HangMan1")!
    }
    
    
    
    
    
    
    
    
    
    
    
//    func mainGame() {
//        textField = true
//        if let guesses = textField {
//            if (String(correctWord).contains(guesses)) {
//                for i in correctWord {
//                    if String(i) == guesses {
//
//                        for (num, letter) in correctWord.enumerated() {
//                            if letter == i {
//
//
//                                guesses.remove(at: guesses.index(guesses.startIndex, offsetBy: num))
//                                guesses.insert(Character(correctWord), at: guesses.index(guesses.startIndex, offsetBy: num))
//                                if String(correctWord) == guesses {
//                                    print("WOW!!! YOU WIN!!!Want to WIN again? yes or no?👏🏼")
//                                    let game2 = readLine()
//                                    if game2 == "yes" {
//                                        print("")
//                                    } else {
//                                        print("Thank you for shopping!😝")
//
//                                    }
//
//                                }
//                            }
//                        }
//                        }
//
//                    }
//
//            }
//            }else { //Incorrect part if letter is not correct
//
//               wrongGuessesLetter.append(guesses)
//
//                label.text = "opp,You have guessed:\(wrongGuessesLetter)"
//
//        }
//           label.text = "opp,Guesse \(wrongGuessesLetter.count)"
//
//            if wrongGuessesLetter.count == 7 {
//
//                if guessesChance == 7 {
//                    hangmanPicture = UIImage(named: "hangman")
//                }
//                }
//            }
}//class{}

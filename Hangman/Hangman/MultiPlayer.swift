//
//  MultiPlayer.swift
//  Hangman
//
//  Created by TingxinLi on 11/26/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class Hangman {
    var correctWord = [String]() //输入保密的
    var wrongGuessesLetter = [String]()
    var guesses = [String]()// 猜字的
    var guessesChance:Int //= 0
    var secureInput: String //= ""
    var label: String //= ""
    var noteLabel: String
    var textField: Bool //= false
    var gameStatus: Bool //= false
    var hangmanPicture: UIImage
//    func gameArray(word: String) {
//        gameStatus = false
//        for i in word {
//            correctWord.append("_")
//            guessesLetter.append(String(i))
//        }
//    }
    
    init(guessesChance:Int, secureInput: String, label: String, textField: Bool, gameStatus: Bool,noteLabel: String, hangmanPicture: UIImage) {
        self.guessesChance = 7
        self.secureInput = ""
        self.label = ""
        self.textField = false
        self.gameStatus = false
        self.noteLabel = ""
        self.hangmanPicture = UIImage(named: "hangMan1")!
       // self.guessesLetter = Array(repeating: "_", count: Int(self.userInput)!)
     
        //for i in 0...Int(self.userInput)! - 1 {
        //    let index = self.userInput.index(self.userInput.startIndex, offsetBy: i)
         //   if (String(self.userInput[index]) == " ") {
            //    self.guessesLetter[i] = " "
         //   }
       // }
   // }
        func gameArray(word: String) {
           // gameStatus = false
            for i in word {
                guesses.append("_")
                correctWord.append(String(i))
            }
            noteLabel == guesses.compactMap{$0}.joined(separator: " ")
            textField == true
        
        }
    }//init{}
    
    func guessLetter (word2: String) {
        if guesses.contains(word2){
            if correctWord.contains(word2){
                noteLabel = "opp,You have guessed: \(word2)"
            } else {
                guessesChance += 1
                for a in 0..<correctWord.count {
                    for b in correctWord {
                        if correctWord[a] == word2 {
                            guesses[a] = correctWord[a]
                        }
                        if guesses == correctWord {
                            noteLabel = "WOW!!! YOU WIN!!!👏🏼"
                            gameStatus = true
                            break
                        }
                        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
                    }
                }
            }
        } else {
            if wrongGuessesLetter.contains(word2) {
                noteLabel = "opp,You have guessed: \(word2)"
            } else {
                guessesChance += 1
                wrongGuessesLetter.append(word2)
                noteLabel = "Wrong! \(wrongGuessesLetter.compactMap{$0}.joined(separator: " "))"
            
            }
        }
        if guessesChance > 1 && guessesChance < 7 {
            hangmanPicture = UIImage(named: "hangMan1")!
        } else if guessesChance == 7 {
            hangmanPicture = UIImage(named: "hangMan7")!
            noteLabel = "Game Over! ☠️"
            gameStatus = true
        }
    }
    
    func newGameStart() {
        correctWord.isEmpty == true
        wrongGuessesLetter.isEmpty == true
        guesses.isEmpty == true
        noteLabel = "put new words"
        guessesChance = 0
       // hangmanPicture = UIImage(name:"hangMan1")!
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

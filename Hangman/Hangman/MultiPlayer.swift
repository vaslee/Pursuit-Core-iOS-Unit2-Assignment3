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
    var guessesLetter = [String]()
    var guesses = [String]()// 猜字的
    var guessesChance:Int = 0
    var secureInput: String = ""
    var label: String = ""
    var noteLabel: String = ""//"_"
    var textField: Bool = false
    var gameStatus: Bool = false
    var hangmanPicture: UIImage = UIImage(named: "HangMan1")!
    
    func gameArray(word: String) -> String {
        for i in word {
            guesses.append("_")
            correctWord.append(String(i))
        }
        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
        textField = true
        return noteLabel
    }
    
    public func updateWord(word2: String) -> String{
        for a in 0..<correctWord.count {
            for b in correctWord {
                if correctWord[a] == word2 {
                    guesses[a] = correctWord[a]
                }
            }
        }
        noteLabel = guesses.compactMap{$0}.joined(separator: " ")
        return noteLabel
    }
    
    func guesseCheck(word2: String) -> String {
        if correctWord.contains(word2){
            
            label = "Yes! what's next?"
        } else {
                label = "opp,You have guessed: \(word2)"
            }
        if guesses == correctWord {
                        label = "WOW!!! YOU WIN!!!👏🏼"
                        gameStatus = true
                    }
        return label
    }
    
    
    
    func guessLetter (word2: String) {
        if correctWord.contains(word2) == false {
            guessesChance += 1
    }
        guessesLetter.append(word2)
    }
    
    func pictureForHangMan() -> UIImage {
        switch guessesChance {
        case 0:
            hangmanPicture = UIImage(named: "HangMan1")!
        case 1:
            hangmanPicture = UIImage(named: "HangMan2")!
        case 2:
            hangmanPicture = UIImage(named: "HangMan3")!
        case 3:
            hangmanPicture = UIImage(named: "HangMan4")!
        case 4:
            hangmanPicture = UIImage(named: "HangMan5")!
        case 5:
            hangmanPicture = UIImage(named: "HangMan6")!
        case 6:
            hangmanPicture = UIImage(named: "HangMan7")!
            
        default:
            return hangmanPicture
        }
        
        return hangmanPicture
    }
    
    
    
    
    
    
    func newGameStart() {
        correctWord.removeAll()
        guessesLetter.removeAll()
        guesses.removeAll()
        noteLabel = "put new words"
        guessesChance = 0
       // hangmanPicture = UIImage(name:"HangMan1")!
    }
    
    
    
}
    
    
    
    
    
    
    

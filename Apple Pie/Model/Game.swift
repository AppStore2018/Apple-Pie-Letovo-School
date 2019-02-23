//
//  Game.swift
//  Apple Pie
//
//  Created by Nikita Vorobev on 16/02/2019.
//  Copyright © 2019 Nikita Vorobev. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    static var listOfWords = [
        "Арбуз",
        "Банан",
        "Ватрушка",
        "Гриб",
        "Домик",
        "Ель",
        "Ёлка",
        "Телефон",
    ]
    
    var correctWord: String {
        var result = ""
        for letter in word.lowercased() {
            if guessedLetters.contains(letter){
               result += "\(letter)"
            } else {
                result += "_"
            }
        }
        
        
        return result
    }
    mutating func guess(letter: String) {
        let character = Character(letter.lowercased())
        
        guessedLetters += [character]
        
        if !word.lowercased().contains(character) {
            incorrectMovesRemaining -= 1
        }
    }
}

//
//  File.swift
//  Code History 3
//
//  Created by dzthnxf dthf on 28.04.25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        100 * correctGuesses / (correctGuesses + incorrectGuesses)
    }
}

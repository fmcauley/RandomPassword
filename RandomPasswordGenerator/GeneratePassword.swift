//
//  GeneratePassword.swift
//  RandomPasswordGenerator
//
//  Created by MLS Discovery on 6/25/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-=_+{}[]?/;:<,>.".characters)

func generateRandomString(_ length: Int) -> String {
    // Start with an empty string
    var string = ""
    
    // Append 'length' number of random characters
    for _ in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}

func generateRandomCharacter() -> Character {
    // Create a random index into the characters array
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    // Get and return a random character
    let character = characters[index]
    return character
}

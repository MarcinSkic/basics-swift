//
//  main.swift
//  Lab4Ex7
//
//  Created by student on 24/10/2022.
//

import Foundation

print("Dawaj pesel: ")
var pesel = readLine()!

guard let genderNumber = (pesel.remove(at: pesel.index(pesel.endIndex, offsetBy: -2))).wholeNumberValue else {
    fatalError("To nie PESEL")
}

switch(genderNumber){
case let x where x % 2 == 0:
    print("Kobieta")
case let x where x % 2 != 0:
    print("Mężczyzna")
    default:
    print("Huh?")
}

//
//  main.swift
//  Ex2Task3
//
//  Created by student on 10/10/2022.
//

import Foundation

var side:Float;

print("Podaj bok sześcianu: ");
if let temp = Float(readLine()!){
    side = temp;
    
    let volume = pow(side,3);
    let perimeter = pow(side,2)*6;
    
    print(String(format: "Sześcian o boku: %.2f ma pole: %.2f i objętość: %.2f", side,perimeter,volume))
} else {
    print("To nie jest liczba!")
}


//
//  main.swift
//  Ex2Task2
//
//  Created by student on 10/10/2022.
//

import Foundation

let pi:Float = 3.141595;

var radius:Float;

print("Podaj promień okręgu: ");
if let temp = Float(readLine()!){
    radius = temp;
    
    let surface = pi*(radius*radius);
    let perimeter = pi*radius*2;
    
    print(String(format: "Koło z promieniem: %.2f ma pole: %.2f i obwód: %.2f", radius,surface,perimeter))
} else {
    print("To nie jest liczba!")
}

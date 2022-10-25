//
//  main.swift
//  Lab4Ex3
//
//  Created by student on 24/10/2022.
//

import Foundation

print("Hello, World!")

if let temp = Double(readLine()!){
    var points:Int;
    guard (2<=temp) && (temp<=5) else {
        fatalError("Błędne dane")
    }
    
    switch(temp){
    case ..<3:
        points = 0
    case 3..<4:
        points = 100
    case 4..<4.5:
        points = 150
    case 4.5...:
        points = 200
    default:
    print("Unobtainable result")
        points = 0
    }
    
    print(points)
    
}



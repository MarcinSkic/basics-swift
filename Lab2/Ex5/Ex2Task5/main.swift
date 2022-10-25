//
//  main.swift
//  Ex2Task5
//
//  Created by student on 10/10/2022.
//

import Foundation

var a:Int
var sum:Int = 0
var average:Float
print("Wygenerowane liczby całkowite: ",terminator: "");
for _ in 1...3 {
    a = Int.random(in:1..<10)
    sum+=a
    
    print(a,terminator: " ")
}
average = (Float(sum)/3.0)
print("\nŚrednia: ",average)

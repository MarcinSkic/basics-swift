//
//  main.swift
//  Ex1Task1
//
//  Created by student on 03/10/2022.
//

import Foundation

print("Hello, World!")

var a:Int
var sum:Int = 0
var average:Int
print("Liczby całkowite")
for _ in 1...3 {
    a = Int.random(in:0..<100)

    print(a)
    sum+=a
}
average = (sum/3)
print("Suma",sum)
print("Średnia",average)

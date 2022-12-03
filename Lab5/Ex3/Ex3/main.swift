//
//  main.swift
//  Ex3
//
//  Created by student on 07/11/2022.
//

import Foundation

guard var number:Int = Int(readLine()!) else {
    throw fatalError("Oh no!")
}
guard number > 100 else {
    throw fatalError("Za mała liczba")
}

var average:Float = 1
var rotations:Float = 0

while number > 0 {
    average *= Float(number%10)
    number /= 10
    rotations += 1
}

average = pow(average,1/rotations)
print(average)

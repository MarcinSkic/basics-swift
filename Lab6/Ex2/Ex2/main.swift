//
//  main.swift
//  Ex2
//
//  Created by student on 14/11/2022.
//

import Foundation

var array : [Int] = [];

for _ in 0...9 {
    array.append(Int.random(in: 1...100))
}

print(array)

guard let number1 = Int(readLine()!) else {
    throw fatalError("To nie liczba")
}

array[0] = number1
print(array)

guard let number2 = Int(readLine()!) else {
    throw fatalError("To nie liczba")
}

array[Int.random(in: 0...9)] = number2

print(array)

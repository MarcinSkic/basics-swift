//
//  main.swift
//  Ex1
//
//  Created by student on 07/11/2022.
//

import Foundation

guard let licz = Int(readLine()!) else {
    throw fatalError("To nie liczba")
}

var x1:Int = 0
var x2:Int = 1
print(x1)
print(x2)

while (x2+x1)<licz {
    let temp = x2
    x2 += x1
    x1 = temp
    print(x2)
}

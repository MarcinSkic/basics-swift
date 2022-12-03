//
//  main.swift
//  Ex3
//
//  Created by student on 14/11/2022.
//

import Foundation

print("Podaj wielkość tablicy: ")
guard let size = Int(readLine()!) else {
    throw fatalError("To nie liczba")
}

guard size > 0 else {
    throw fatalError("Wielkość nie dodatnia")
}

var array: [Int] = []

for _ in 0...size {
    array.append(Int.random(in: 1...100))
}

print(array)

guard let checkNumber = Int(readLine()!) else {
    throw fatalError("To nie liczba")
}

if(checkNumber == array[0]){
    print("Jest pierwszym")
}
if(checkNumber == array.last){
    print("Jest ostatnim")
}

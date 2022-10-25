//
//  main.swift
//  Lab4Ex4
//
//  Created by student on 24/10/2022.
//

import Foundation

print("Podaj dwie liczby całkowite: ")

guard let n1 = Float(readLine()!) else {
    fatalError("Nope")
}

guard let n2 = Float(readLine()!) else {
    fatalError("Nope")
}

print("Operacje:")
print("\tDodawanie - 1")
print("\tOdejmowanie - 2")
print("\tMnożenie - 3")
print("\tDzielenie - 4")
print("Wybrana: ",terminator: "")

guard let operationPick = Int(readLine()!) else {
    fatalError("Nope")
}

var result:Float;

switch(operationPick){
case 1:
    result = n1+n2
case 2:
    result = n1-n2
case 3:
    result = n1*n2
case 4:
    guard n2 != 0 else {
        fatalError("Nie dzielimy przez zero!")
    }
    result = n1/n2
default:
    print("Błędny wybór operacji")
    result = 0
}

print("Wynik: \(result)")

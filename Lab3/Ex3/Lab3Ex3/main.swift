//
//  main.swift
//  Lab3Ex3
//
//  Created by student on 17/10/2022.
//


import Foundation

print("TASK 1")

let currentYear = 2022
var s:String="";

let name = readLine()!
s += name

let secondName = readLine()!
s += " "+secondName

let surname = readLine()!
s += " "+surname

let birthDate = readLine()!

s += " "+birthDate

print(s)

print("\nTASK 2")
let range = s.index(s.startIndex,offsetBy: name.count)..<s.index(s.startIndex,offsetBy: name.count+1+secondName.count)
s.removeSubrange(range)

print(s)

print("\nTASK 3")
let range2 = s.index(s.endIndex,offsetBy: -birthDate.count)..<s.index(s.endIndex,offsetBy: 0)
s.removeSubrange(range2)

s.append(String(currentYear-Int(birthDate)!))

print(s)

print("\nTASK 4")
if(s.hasPrefix("D")){
    print("Rozpoczyna się od D")
} else {
    print("Nie rozpoczyna się od D")
}

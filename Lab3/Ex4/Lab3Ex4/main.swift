//
//  main.swift
//  Lab3Ex4
//
//  Created by student on 17/10/2022.
//

import Foundation

print("TASK 1")
var isFound = false

var index:Int = 0;
let text = readLine()!

let char = readLine()!

if let temp = Int(readLine()!){
    index = temp
}

if(text.hasPrefix(char)){
    isFound = true
    print("Jest na początku")
}

if(text.hasSuffix(char)){
    isFound = true
    print("Jest na końcu")
}

if(text[text.index(text.startIndex,offsetBy: index)] == Character(char)){
    isFound = true;
    print("Jest na indeksie oddalonym od początku")
}

if(text[text.index(text.endIndex,offsetBy: -index-1)] == Character(char)){
    isFound = true;
    print("Jest na indeksie oddalonym od końca")
}

if(!isFound){
    print("Nie znaleziono znaku")
}

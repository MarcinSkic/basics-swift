//
//  main.swift
//  Lab3Ex5
//
//  Created by student on 17/10/2022.
//

import Foundation

print("TASK 1")

let text1 = readLine()!
let text2 = readLine()!

if(text1 == text2){
    print("Identyczne")
} else {
    print("Nie identyczne")
}

print("\nTASK 2")
let prefix = readLine()!

if(text1.hasPrefix(prefix)){
    print("Pierwszy zawiera prefix")
}

if(text2.hasPrefix(prefix)){
    print("Drugi zawiera prefix")
}

print("\nTASK 3")
let suffix = readLine()!

if(text1.hasSuffix(suffix)){
    print("Pierwszy zawiera suffix")
}

if(text2.hasSuffix(suffix)){
    print("Drugi zawiera suffix")
}


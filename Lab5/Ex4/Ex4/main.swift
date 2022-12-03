//
//  main.swift
//  Ex4
//
//  Created by student on 07/11/2022.
//

import Foundation

let text = readLine()!
let chars = Array(text)
let length = text.count

for i in 0...length/2{
    if(chars[i] != chars[length-i-1]){
        print("To nie palindrom")
        exit(0)
    }
}
print("To palindrom")

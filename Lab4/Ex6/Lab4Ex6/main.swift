//
//  main.swift
//  Lab4Ex6
//
//  Created by student on 24/10/2022.
//

import Foundation

let char = Character(readLine()!)

switch(char.asciiValue!){
case 48..<58:
    print("liczba")
case 65,69,73,74,79,85,89,97,101,105,106,111,117,121:
    print("samogłoska")
case 65...90,97...122:
    print("spółgłoska")
default:
    print("Inny znak")
}

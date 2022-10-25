//
//  main.swift
//  Lab4Ex2
//
//  Created by student on 24/10/2022.
//

import Foundation

/*let z = "Hdsadaa"
switch(z){
case let s where z.hasSuffix("a"):
    print("Ma 'a' na koncu")
default:
    print("Nope")
}*/

//przedostatnia nieparzysta mezczyzna

if let temp = Int(readLine()!){
    
    let century = temp/100 + (temp%100 == 0 ? 0 : 1)
    print(century)
}

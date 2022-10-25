//
//  main.swift
//  Lab4Ex5
//
//  Created by student on 24/10/2022.
//

import Foundation

print("Podaj kod pocztowy")
let postalCode = readLine()!

switch (postalCode){
case let _ where postalCode.hasPrefix("20"):
    print("Lublin")
case let _ where postalCode.hasPrefix("21"):
    print("Lublin")
case let _ where postalCode.hasPrefix("22"):
    print("Lublin")
case let _ where postalCode.hasPrefix("23"):
    print("Lublin")
case let _ where postalCode.hasPrefix("24"):
    print("Lublin")
default:
    print("Nie lublin")
}

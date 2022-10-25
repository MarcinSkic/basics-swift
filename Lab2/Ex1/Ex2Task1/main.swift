//
//  main.swift
//  Ex2Task1
//
//  Created by student on 10/10/2022.
//

import Foundation

print("Hello, World!")

let currentYear = 2022;
var age:Int = 0;

if let temp = Int(readLine()!){
    age = currentYear-temp;
}

//let min = Int16.min;
//let d = 0.3523532534634;
//let ss = String(format:"%.5f",d);
//print(s)
print(String(format: "Masz %d lat",age));

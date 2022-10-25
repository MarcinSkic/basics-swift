//
//  main.swift
//  Lab4Ex1
//
//  Created by student on 24/10/2022.
//

import Foundation

print("Podaj rok: ",terminator: "")
if let temp = Int(readLine()!){
    if(temp%4 == 0){
        if((temp%100 != 0) || (temp%400 == 0)){
            print("Rok przestępny")
            exit(0)
        }
    }
    print("Rok nieprzestępny")
}

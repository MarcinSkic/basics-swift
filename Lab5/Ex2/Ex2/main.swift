//
//  main.swift
//  Ex2
//
//  Created by student on 07/11/2022.
//

import Foundation

print("Podaj liczbę pierwszą: ")
guard let number = Int(readLine()!) else {
    throw fatalError("Oh no!")
}

for i in 2...(number/2){
    if(number % i == 0){
        print("To nie jest liczba pierwsza!")
        exit(0)
    }
}
print("To jest liczba pierwsza!")

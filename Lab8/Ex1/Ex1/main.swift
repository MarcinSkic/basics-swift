//
//  main.swift
//  Ex1
//
//  Created by student on 28/11/2022.
//

import Foundation

let osoba1 = (name: "Anna",surname: "Kęsik",birthYear: 2001)
let osoba2 = (name: "Marcin",surname: "Czerniak",birthYear: 2001)

if(osoba1.birthYear < osoba2.birthYear){
    print("Starsza jest \(osoba1.name) \(osoba1.surname)")
} else if (osoba1.birthYear > osoba2.birthYear){
    print("Starsza jest \(osoba2.name) \(osoba2.surname)")
} else {
    print("Są tego samego wieku")
}

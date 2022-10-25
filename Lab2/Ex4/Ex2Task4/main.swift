//
//  main.swift
//  Ex2Task4
//
//  Created by student on 10/10/2022.
//

import Foundation

var a,b,z,s,boardPricePerMeter:Float;

print("Podaj wymiar a: ", terminator: "");
if let temp = Float(readLine()!){
    a = temp;
} else {
    print("Musi być podana liczba!")
    exit(0);
}

print("Podaj wymiar b: ", terminator: "");
if let temp = Float(readLine()!){
    b = temp;
} else {
    print("Musi być podana liczba!")
    exit(0);
}

print("Podaj wymiar z: ", terminator: "");
if let temp = Float(readLine()!){
    z = temp;
} else {
    print("Musi być podana liczba!")
    exit(0);
}

print("Podaj szerokość drzwi: ", terminator: "");
if let temp = Float(readLine()!){
    s = temp;
} else {
    print("Musi być podana liczba!")
    exit(0);
}

print("Podaj koszt listwy za metr: ", terminator: "");
if let temp = Float(readLine()!){
    boardPricePerMeter = temp;
} else {
    print("Musi być podana liczba!")
    exit(0);
}

let boardLength = (2*a + 2*b) + (2*z + 2*b) - 2*s;
let finalPrice = boardLength * boardPricePerMeter;

print(String(format:"Wymagana długość listwy to : %.2f, a całość będzie kosztować: %.2f",boardLength,finalPrice));

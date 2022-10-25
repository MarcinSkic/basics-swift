//
//  main.swift
//  Ex2Task6
//
//  Created by student on 10/10/2022.
//

import Foundation

var mark:Int;
var weight:Int;
var marksWithWeightsSum:Int = 0;
var weightsSum:Int = 0;

for i in 1...3 {
    print(String(format:"Podaj %d ocenę: ",i), terminator: "");
    if let temp = Int(readLine()!){
        mark = temp;
    } else {
        print("Musi być podana liczba całkowita!")
        exit(0);
    }

    print("Podaj wagę: ", terminator: "");
    if let temp = Int(readLine()!){
        weight = temp;
    } else {
        print("Musi być podana liczba całkowita!")
        exit(0);
    }
    
    marksWithWeightsSum += mark*weight;
    weightsSum += weight;
}

let average = Float(marksWithWeightsSum) / Float(weightsSum);

print(String(format: "Średnia ważona: %.2f", average))


//
//  main.swift
//  Ex5
//
//  Created by student on 07/11/2022.
//

import Foundation
/*
guard let size = Int(readLine()!) else {
    throw fatalError("To nie int")
}

var sequence = [Int]()
var lastElem:Int = 0

for i in 0..<size{
    var wasAdded = false
    while(!wasAdded){
        print("Dodaj liczbę numer: ",i+1)
        if let elem = Int(readLine()!) {
            if(i == 0 || lastElem != elem){
                sequence.append(elem)
                lastElem = elem
                wasAdded = true
            }
        }
    }
}

print("Stworzony ciag: ",sequence)

var max:Int = 0
var min:Int = 0
for i in stride(from: 1, to: size-1, by: 1){
    if(sequence[i-1] > sequence[i] && sequence[i] < sequence[i+1]){
        print("Minimum lokalne: ",sequence[i]," na indeksie: ",i)
        min += 1
    }
    if(sequence[i-1] < sequence[i] && sequence[i] > sequence[i+1]){
        print("Maksimum lokalne: ",sequence[i]," na indeksie: ",i)
        max += 1
    }
}

print("Liczba maksimów: ",max," liczba minimów: ",min)

*/

var max:Int = 0
var min:Int = 0

guard let size = Int(readLine()!) else {
    throw fatalError("To nie int")
}

var x1:Int = 0
var x2:Int = 0
var x3:Int = 0

for i in 0..<size{
    var addFailed:Bool
    repeat{
        addFailed = false
        print("Dodaj liczbę numer: ",i+1)
        if let elem = Int(readLine()!) {
            if(i == 0){
                x1=elem
            } else if(i==1 && x1 != elem){
                x2 = elem
            } else if (i == 2 && x2 != elem) {
                x3 = elem
            } else if (i > 2 && x2 != elem){
                x1 = x2
                x2 = x3
                x3 = elem
            } else {
                addFailed = true
            }
        } else {
            addFailed = true
        }
    } while (addFailed)
    
    if(!addFailed && i >= 2){
        if(x1 > x2 && x2 < x3){
            print("Minimum lokalne: ",x2," na indeksie: ",i)
            min += 1
        }
        if(x1 < x2 && x2 > x3){
            print("Maksimum lokalne: ",x2," na indeksie: ",i)
            max += 1
        }
    }
}

print("Liczba maksimów: ",max," liczba minimów: ",min)

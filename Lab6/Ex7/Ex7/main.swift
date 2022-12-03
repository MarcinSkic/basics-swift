//
//  main.swift
//  Ex7
//
//  Created by student on 14/11/2022.
//

import Foundation

var array: [Int] = []

print("Podaj liczbę elementów: ")
guard let size = Int(readLine()!) else {
    throw fatalError("Eh")
}

for _ in 0..<size {
    array.append(Int.random(in: 1...100))
}

var startingIndex:Int = 0;

print("Tablica: ",array)

/*
 var longestSequence: [Int] = []
 var currentSequence: [Int] = []
 
 for (index,value) in array.enumerated(){
    if(currentSequence.count == 0) {
        currentSequence.append(value)
    } else if (currentSequence.last! < value) {
        currentSequence.append(value)
    } else {
        if(longestSequence.count <= currentSequence.count ){
            longestSequence = currentSequence
            startingIndex = index-currentSequence.count
        }
        currentSequence = []
    }
}
 
 if(longestSequence.count <= currentSequence.count ){
     longestSequence = currentSequence
     startingIndex = array.count-currentSequence.count
 }

 if(longestSequence.count <= 1){
     print("Nie znaleziono podciągu")
     exit(0)
 }

 print(longestSequence," i zaczyna się od: \(startingIndex)")
 
 */

var currentLength: Int = 0
var biggestLength: Int = 0

for (index,value) in array.enumerated(){
    if(currentLength == 0) {
        currentLength += 1
    } else if (array[index-1] < value) {
        currentLength += 1
    } else {
        if(biggestLength <= currentLength ){
            biggestLength = currentLength
            startingIndex = index-currentLength
        }
        currentLength = 0
    }
}

if(biggestLength <= currentLength ){
    biggestLength = currentLength
    startingIndex = array.count-currentLength
}

if(biggestLength <= 1){
    print("Nie znaleziono podciągu")
    exit(0)
}

print(array[startingIndex..<startingIndex+biggestLength]," i zaczyna się od: \(startingIndex)")

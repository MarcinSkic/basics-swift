//
//  main.swift
//  Ex3
//
//  Created by student on 28/11/2022.
//

import Foundation

enum Standard : Int, CustomStringConvertible {
    case Low = 1
    case Medium = 2
    case High = 3
    
    var description: String {
        switch self {
        case .High: return "Wysoki"
        case .Medium: return "Średni"
        case .Low: return "Niski"
        }
    }
}

var size = 0
var apartments : [(place: String, area: Float, pricePerMeter: Float, quality: Standard)] = []

print("Podaj liczbę mieszkań: ")
while (true){
    guard let temp = Int(readLine()!) else {
        print("To nie jest liczba")
        continue
    }
    
    size = temp
    break;
}

for i in 0..<size {
    print("Dane mieszkania \(i+1)")
    print("\tLokalizacja: ",terminator: "")
    let place = readLine()!
    
    print("\tPowierzchnia: ",terminator: "")
    var area:Float = 0
    while (true){
        guard let temp = Float(readLine()!) else {
            print("To nie jest liczba")
            continue
        }
        
        area = temp
        break;
    }
    
    print("\tCena za metr: ",terminator: "")
    var pricePerMeter:Float = 0
    while (true){
        guard let temp = Float(readLine()!) else {
            print("To nie jest liczba")
            continue
        }
        
        pricePerMeter = temp
        break;
    }
    
    print("\tPodaj standard (1, 2 lub 3): ",terminator: "")
    var quality:Standard = Standard.Low
    while (true){
        guard let temp = Int(readLine()!) else {
            print("To nie jest liczba")
            continue
        }
        
        quality = Standard(rawValue: temp)!
        break;
    }
    
    apartments.append((place,area,pricePerMeter,quality))
}

print(apartments.max(by: { $0.area*$0.pricePerMeter < $1.area*$1.pricePerMeter })!)
print(apartments.min(by: { $0.area*$0.pricePerMeter < $1.area*$1.pricePerMeter })!)

print("Podaj poszukiwaną lokalizację: ")
let place = readLine()!
print(apartments.first(where: {$0.place == place})!)

print("Mieszkania według standardu rosnąco: ")
apartments.sort(by: {$0.quality.rawValue < $1.quality.rawValue})
print(apartments)

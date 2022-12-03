//
//  main.swift
//  Ex4
//
//  Created by student on 14/11/2022.
//

import Foundation

print("Podaj wielkość")
guard let size = Int(readLine()!) else {
    throw fatalError("Eh")
}

var array1 : [Int] = []
var array2 : [Int] = []


for _ in 0...size {
    array1.append(Int.random(in: 1...20))
    array2.append(Int.random(in: 1...20))
}

print(array1)
print(array2)

array1.forEach {
    if(array2.contains($0)){
        print("Obie tablice zawierają \($0)")
    }
}

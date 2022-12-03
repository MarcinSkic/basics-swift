//
//  main.swift
//  Ex6
//
//  Created by student on 14/11/2022.
//

import Foundation

print("Podaj liczbę wierszy: ")
guard let rows = Int(readLine()!) else {
    throw fatalError("Eh")
}

print("Podaj liczbę kolumn: ")
guard let columns = Int(readLine()!) else {
    throw fatalError("Eh")
}

var matrix: [[Float]] = []

for row in 0 ..< rows {
    var tempRow : [Float] = []
    for col in 0 ..< columns {
        tempRow.append(Float.random(in: -100...100))
    }
    matrix.append(tempRow)
}

for i in 0 ..< matrix.count {
    for j in 0 ..< matrix[i].count{
        print("\(matrix[i][j])", terminator:" ")
    }
    print()
}

var min: Float = 100
var minInd: [Int] = [0,0]
var max: Float = -100
var maxInd: [Int] = [0,0]

for (rowInd, row) in matrix.enumerated(){
    for (colInd, value) in row.enumerated() {
        if(value < min) {
            min = value
            minInd = [rowInd,colInd]
        }
        if(value > max) {
            max = value
            maxInd = [rowInd,colInd]
        }
    }
}

print("Min: \(min) na indeksach [\(minInd[0])][\(minInd[1])]")


print("Min: \(max) na indeksach [\(maxInd[0])][\(maxInd[1])]")

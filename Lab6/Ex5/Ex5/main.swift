//
//  main.swift
//  Ex5
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

var matrix: [[Int]] = []

for row in 0 ..< rows {
    var tempRow : [Int] = []
    for col in 0 ..< columns {
        tempRow.append(Int.random(in: 1...100))
    }
    matrix.append(tempRow)
}

print(matrix)

for i in 0 ..< matrix.count {
    for j in 0 ..< matrix[i].count{
        print("\(matrix[i][j])", terminator:" ")
    }
    print()
}

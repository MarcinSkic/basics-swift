//
//  main.swift
//  Ex2
//
//  Created by student on 28/11/2022.
//

import Foundation

enum Mark : Float{
    case A = 5
    case B = 4.5
    case C = 4
    case D = 3.5
    case E = 3
    case F = 2
}

var students : [(surname: String,Mark,Mark,Mark)] = []

var marks : [Mark] = [Mark.A,Mark.A,Mark.A]
var surname:String

for i in (1...3){
    print("Podaj nazwisko \(i) studenta: ")
    surname = readLine()!
    
    for x in (0..<3){
        print("Podaj \(x+1) ocenę: ")
        
        while (true){
            guard let temp = Float(readLine()!) else {
                print("To nie jest liczba")
                continue
            }
            
            marks[x] = Mark(rawValue: temp)!
            
            break;
        }
    }
    
    students.append((surname,marks[0],marks[1],marks[2]))
}

students.sort (by: { ($0.1.rawValue+$0.2.rawValue+$0.3.rawValue)/3 > ($1.1.rawValue+$1.2.rawValue+$1.3.rawValue)/3})

print(students)

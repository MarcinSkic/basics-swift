//
//  main.swift
//  Ex4
//
//  Created by student on 28/11/2022.
//

import Foundation

enum Month {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

let month = Month.March

switch(month){
case Month.December, Month.February, Month.January:
    print("Winter")
case Month.March, Month.April, Month.May:
    print("Spring")
case Month.June, Month.July, Month.August:
    print("Summer")
case Month.September, Month.October, Month.November:
    print("Autumn")
}

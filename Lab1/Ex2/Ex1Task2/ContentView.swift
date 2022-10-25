//
//  ContentView.swift
//  Ex1Task2
//
//  Created by student on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var n1:String = ""
    @State private var n2:String = ""
    @State private var n3:String = ""
    @State private var sum:Int = 0
    @State private var average:Float = 0
    @State private var clicked:Bool = false
    
    var body: some View {
        VStack {
            TextField("Number 1", text: $n1)
            TextField("Number 2", text: $n2)
            TextField("Number 3", text: $n3)
            Button(action:{
                sum = Int(n1)!+Int(n2)!+Int(n3)!
                average = Float(sum)/3.0
            }, label: {
                Text("Calculate")
            })
            Text("Suma: " + String(sum))
            Text("Średnia: " + String(average))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

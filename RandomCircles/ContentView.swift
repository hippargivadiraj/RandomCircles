//
//  ContentView.swift
//  RandomCircles
//
//  Created by Vadiraj Hippargi on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var r:Double = Double.random(in: 1..<250)/255
    var g:Double = 150/255
    var b:Double = 100/255
    var o = 8
    var w = Int.random(in: 100..<200)
    
    var xoff = Int.random(in: 1..<20)
    var yoff = Int.random(in: 1..<20)
    
    var body: some View {
        ZStack{
            ForEach(0 ..< 12) { item in
                Rectangle()
                    .foregroundColor(Color( red: Double.random(in: 1..<250)/255, green: Double.random(in: 1..<250)/255, blue: Double.random(in: 1..<250)/255, opacity:0.7))
                    .frame(width: CGFloat(w), height: CGFloat(w))
                    .offset(x: CGFloat(Int.random(in: -210..<200)), y: CGFloat(Int.random(in: -200..<300)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

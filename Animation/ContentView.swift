//
//  ContentView.swift
//  Animation
//
//  Created by denzel banegas on 02/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var move: Bool = false
    
    var body: some View {
         
        NavigationView {
            ZStack {
                CardView(title: "Red", colors: .red)
                    .offset(x: 0, y: move ? -500 : -100)
                    .scaleEffect(move ? 1 : 0.75)
                
                CardView(title: "Orange", colors: .orange)
                    .offset(x: 0, y: move ? -400 : -80)
                    .scaleEffect(move ? 1 : 0.80)
                
                CardView(title: "Yellow", colors: .yellow)
                    .offset(x: 0, y: move ? -300 : -60)
                    .scaleEffect(move ? 1 : 0.85)
            
                CardView(title: "Purple", colors: .purple)
                    .offset(x: 0, y: move ? -200 : -40)
                    .scaleEffect(move ? 1 : 0.90)
            
                CardView(title: "Pink", colors: .pink)
                    .offset(x: 0, y: move ? -100 : -20)
                    .scaleEffect(move ? 1 : 0.95)
            
                CardView(title: "Black", colors: .black)
                    .onTapGesture {
                       
                        self.move.toggle()
                }
            }
                .offset(x: 0, y: move ? 150 : 0)
                .animation(.spring())
        }
        .colorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
